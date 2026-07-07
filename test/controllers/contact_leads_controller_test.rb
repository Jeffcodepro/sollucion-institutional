require "test_helper"

class ContactLeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    ActionMailer::Base.deliveries.clear
  end

  test "should get new" do
    get contact_url

    assert_response :success
  end

  test "creates contact lead and sends email" do
    assert_difference("ContactLead.count", 1) do
      assert_difference("ActionMailer::Base.deliveries.size", 1) do
        post contact_leads_url, params: {
          contact_lead: {
            name: "Maria Souza",
            document: "12.345.678/0001-99",
            email: "maria@example.com",
            phone: "(11) 99999-9999",
            interest: "Desenvolvimento web",
            message: "Quero mais detalhes sobre a estrutura do site.",
            source: "contact_page"
          }
        }
      end
    end

    contact_lead = ContactLead.order(:created_at).last
    mail = ActionMailer::Base.deliveries.last

    assert_equal "12.345.678/0001-99", contact_lead.document
    assert_equal "new_lead", contact_lead.status
    assert_equal ["contato@sollucion.com"], mail.to
    assert_equal ["maria@example.com"], mail.reply_to
    assert_redirected_to contact_url(anchor: "contact-form")
  end

  test "redirects to home when the lead comes from the home page" do
    post contact_leads_url, params: {
      contact_lead: {
        name: "Carlos Lima",
        document: "123.456.789-00",
        email: "carlos@example.com",
        phone: "(11) 98888-7777",
        interest: "Automações com n8n",
        message: "Preciso de ajuda com automacoes.",
        source: "home_page"
      }
    }

    assert_redirected_to root_url(anchor: "contact-form")
  end

  test "renders the form again when data is invalid" do
    assert_no_difference("ContactLead.count") do
      assert_no_difference("ActionMailer::Base.deliveries.size") do
        post contact_leads_url, params: {
          contact_lead: {
            name: "",
            email: "invalido",
            message: "",
            source: "contact_page"
          }
        }
      end
    end

    assert_response :unprocessable_entity
    assert_match "Não foi possível enviar sua mensagem", response.body
  end
end

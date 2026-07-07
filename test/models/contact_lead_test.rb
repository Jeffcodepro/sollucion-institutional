require "test_helper"

class ContactLeadTest < ActiveSupport::TestCase
  test "applies default status and source" do
    contact_lead = ContactLead.new(
      name: "Ana",
      document: "123.456.789-00",
      email: "ana@example.com",
      phone: "(11) 99999-9999",
      interest: "Desenvolvimento web",
      message: "Mensagem de teste"
    )

    assert contact_lead.valid?
    assert_equal "new_lead", contact_lead.status
    assert_equal "contact_page", contact_lead.source
  end

  test "requires mandatory fields" do
    contact_lead = ContactLead.new(
      name: "Bruno",
      email: "bruno@example.com",
      message: "Mensagem de teste"
    )

    assert_not contact_lead.valid?
    assert_includes contact_lead.errors[:document], "can't be blank"
    assert_includes contact_lead.errors[:phone], "can't be blank"
    assert_includes contact_lead.errors[:interest], "can't be blank"
  end

  test "rejects invalid document characters" do
    contact_lead = ContactLead.new(
      name: "Clara",
      email: "clara@example.com",
      phone: "(11) 98888-7777",
      interest: "Infraestrutura digital",
      message: "Mensagem de teste",
      document: "ABC123"
    )

    assert_not contact_lead.valid?
    assert_includes contact_lead.errors[:document], "deve conter apenas numeros e pontuacao"
  end
end

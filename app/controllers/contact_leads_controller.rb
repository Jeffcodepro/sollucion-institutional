class ContactLeadsController < ApplicationController
  def new
    @contact_lead = ContactLead.new(
      interest: params[:interest],
      source: "contact_page"
    )
  end

  def create
    @contact_lead = ContactLead.new(contact_params)

    if @contact_lead.save
      ContactLeadMailer.new_contact_message(@contact_lead).deliver_now

      redirect_to redirect_path_for(@contact_lead.source),
        notice: "Mensagem enviada com sucesso. Em breve entraremos em contato."
    else
      flash.now[:alert] = "Não foi possível enviar sua mensagem. Verifique os campos e tente novamente."
      render_form_for(@contact_lead.source)
    end
  end

  private

  def contact_params
    params.require(:contact_lead).permit(
      :name,
      :document,
      :email,
      :phone,
      :interest,
      :message,
      :source
    )
  end

  def redirect_path_for(source)
    source == "home_page" ? root_path(anchor: "contact-form") : contact_path(anchor: "contact-form")
  end

  def render_form_for(source)
    if source == "home_page"
      render "pages/home", status: :unprocessable_content
    else
      render :new, status: :unprocessable_content
    end
  end
end

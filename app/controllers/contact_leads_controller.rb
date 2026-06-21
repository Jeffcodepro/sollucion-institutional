class ContactLeadsController < ApplicationController
  def new
    @contact_lead = ContactLead.new
  end

  def create
    @contact_lead = ContactLead.new(contact_lead_params)

    if @contact_lead.save
      redirect_to contact_path, notice: "Mensagem enviada com sucesso. Em breve entraremos em contato."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_lead_params
    params.require(:contact_lead).permit(
      :name,
      :company,
      :email,
      :phone,
      :interest,
      :message
    )
  end
end

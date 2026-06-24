class ContactLeadsController < ApplicationController
  def new
  end

  def create
    @contact_data = contact_params

    redirect_to contact_path, notice: "Mensagem enviada com sucesso. Em breve entraremos em contato."
  end

  private

  def contact_params
    params.permit(
      :name,
      :company,
      :email,
      :phone,
      :interest,
      :message
    )
  end
end

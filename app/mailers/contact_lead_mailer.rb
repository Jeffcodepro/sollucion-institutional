class ContactLeadMailer < ApplicationMailer
  def new_contact_message(contact_lead)
    @contact_lead = contact_lead
    @from_email = ENV.fetch("CONTACT_FORM_FROM_EMAIL", "contato@sollucion.com")

    mail(
      from: @from_email,
      to: ENV.fetch("CONTACT_FORM_TO_EMAIL", "contato@sollucion.com"),
      reply_to: @contact_lead.email,
      subject: "Novo contato pelo site - #{@contact_lead.name}"
    )
  end
end

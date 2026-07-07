class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch("CONTACT_FORM_FROM_EMAIL", "contato@sollucion.com")
  layout "mailer"
end

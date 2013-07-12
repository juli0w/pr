class NotificationsMailer < ActionMailer::Base
  default from: "mailer@promacal.com.br"
  default to: "lucas@promacal.com.br"

  def contact(message)
    @message = message
    mail(subject: "Promacal - Contato")
  end

  def exclusive_contact(message)
    @message = message
    mail(subject: "Promacal Exclusive - Contato", to: "exclusive@promacal.com.br")
  end
end

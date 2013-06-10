class NotificationsMailer < ActionMailer::Base
  default from: "mailer@promacal.com.br"
  default to: "lucas@promacal.com.br"

  def contact(message)
    @message = message
    mail(subject: "Promacal - Contato")
  end
end

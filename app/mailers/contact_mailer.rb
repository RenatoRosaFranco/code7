class ContactMailer < ApplicationMailer

  default from: 'no-reply@code7even.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sended.subject
  #
  def sended(user)
    @user = user
    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.rreceived.subject
  #
  def received(user)
    @user = user
    mail to: "to@example.org"
  end
end

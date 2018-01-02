class NewsletterMailer < ApplicationMailer

  default from: 'no-reply@code7even.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.signup.subject
  #
  def signup(user)
    @user = user
    mail({
     to: user.email,
     subject: "#{user.name}, você se cadastrou com sucesso. em nossa newsletter."
    })
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.cancel.subject
  #
  def cancel(user)
    @user = user
    mail({
     to: user.email,
     subject: "#{user.name}, já vai? aguardaremos anciosamente a sua volta."
    })
  end
end

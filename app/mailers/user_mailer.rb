class UserMailer < ApplicationMailer
  default from: "anhboy6ss@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    # @greeting = "Hi"
    @user = user
    mail to: @user.email, subject: "Account activation"

    # mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def sample_email(user)
    @user = user
    mail to: @user.email, subject: "Sample Email"
  end
end

class UsermailerMailer < ApplicationMailer
  default from: 'froufette.pepette@gmail.com'
  layout 'mailer'

  def sample_email(eleve)
    @user = eleve
    mail(:to => @user.email, :subject => 'Sample Email')
  end
end

# Preview all emails at http://localhost:3000/rails/mailers/gakusai_mailer
class GakusaiMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/gakusai_mailer/sendmail_confirm
  def sendmail_confirm
    GakusaiMailer.sendmail_confirm
  end

end

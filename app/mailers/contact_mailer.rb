class ContactMailer < ApplicationMailer
  default from: 'notifications@tesseract.uark.edu'

  def welcome_email(mail)
    @email = mail

    mail(to: Rails.application.config.x.displayOptions.contactEmail, subject: 'Tesseract Site Contact Form')
  end

end

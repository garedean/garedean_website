class ContactMailer < ApplicationMailer
  default from: "contact@garedean.com"

  def contact_email(sender_name, sender_message)
    @sender_name = sender_name
    @sender_message = sender_message

    mail to: "garrettdolson@gmail.com", subject: "Garedean.com: new message"
  end
end

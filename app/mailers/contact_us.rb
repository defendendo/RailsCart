class ContactUs < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_us.new_contact_notification.subject
  #
  def new_contact_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  default from: "optvision.larvata.tw"        

  def new_contact_notification(contact)
    @greeting = "Hello"
    @contact = contact
    mail to: "theochens@gmail.com", subject: "opt使用者來信"
  end
end

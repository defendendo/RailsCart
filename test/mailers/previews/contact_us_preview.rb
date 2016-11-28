# Preview all emails at http://localhost:3000/rails/mailers/contact_us
class ContactUsPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_us/new_contact_notification
  def new_contact_notification
    ContactUs.new_contact_notification
  end

end

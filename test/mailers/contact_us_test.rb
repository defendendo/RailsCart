require 'test_helper'

class ContactUsTest < ActionMailer::TestCase
  test "new_contact_notification" do
    mail = ContactUs.new_contact_notification
    assert_equal "New contact notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

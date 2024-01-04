require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test 'received' do
    mail = OrderMailer.received(orders(:one))
    assert_equal 'Pragmatic Store Order Confirmation', mail.subject
    assert_equal ['david@example.com'], mail.to
    assert_equal ['haile@example.com'], mail.from
    assert_includes '1 x Programming Ruby 1.9', mail.body.to_s
  end

  test 'shipped' do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal 'Pragmatic Store Order Shipped', mail.subject
    assert_equal ['david@example.com'], mail.to
    assert_equal ['haile@example.com'], mail.from
  end
end

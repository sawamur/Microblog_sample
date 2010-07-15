require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @masaki = User.create(:name => "Masaki")
    @yukihiko = User.create(:name => "Yukihiko")
  end

  test "#follow?" do
    assert !@masaki.follow?(@yukihiko)
    c = Connection.create(:from_id => @masaki.id,
                          :to_id => @yukihiko.id)
    assert c.valid?
    assert @masaki.follow?(@yukihiko)
  end
end

require 'test_helper'

class ConnectionTest < ActiveSupport::TestCase
  def setup
    @masaki = User.create(:name => "Masaki")
    @yukihiko = User.create(:name => "Yukihiko")
  end

  test "not duplicate connection" do
    c = Connection.create(:from_id => @masaki.id,
                      :to_id => @yukihiko.id )
    assert c.valid?
    c2 = Connection.create(:from_id => @masaki.id,
                      :to_id => @yukihiko.id )
    assert !c2.valid?
  end


end

require 'test_helper'

class TimelineTest < ActiveSupport::TestCase
  def setup
    @masaki = User.create(:name => "masaki")
  end

  test "tweet goes to timeline" do
    tweet = Tweet.create(:user_id => @masaki.id,
                          :body => "hoge!")
    assert tweet.valid?
    assert_not_nil Timeline.find(:last,:conditions => 
                                 {:user_id => @masaki.id,
                                   :tweet_id => tweet.id })
    assert !@masaki.timelines.empty?
  end
  
  
end

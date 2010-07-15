class Tweet < ActiveRecord::Base
  belongs_to :user

  def after_create
    Timeline.create(:user_id => self.user_id,
                    :tweet_id => self.id)

    Connection.find(:all,
                    :conditions => 
                    {:to_id => self.user_id }).each do |con|
      Timeline.create(:user_id => con.from_id,
                      :tweet_id => self.id)
    end
  end
end

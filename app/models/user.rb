class User < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :tweets,:order => "id desc"
  has_many :timelines,:order => "tweet_id desc"
  
  def follow?(user)
    !Connection.find(:first,:conditions => 
                     {:from_id => self.id,
                       :to_id => user.id }).nil?
  end

end

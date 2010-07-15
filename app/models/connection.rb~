class Connection < ActiveRecord::Base
  validates_uniqueness_of :to_id,:scope => [:from_id]

  belongs_to :to_user,
  :class_name => "User",
  :foreign_key => :to_id
  
  belongs_to :from_user,
  :class_name => "User",
  :foreign_key => :from_id

end

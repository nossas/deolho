class Subscriber < ActiveRecord::Base
  attr_accessible :email
  validates :email, :presence => true
  validates :email, :uniqueness => true
end

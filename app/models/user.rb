class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :image, :last_name
  validates :email, :first_name, :last_name, :image, :presence => true
end

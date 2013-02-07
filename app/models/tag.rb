class Tag < ActiveRecord::Base
  attr_accessible :name
  validate :name, :presence => true
  validate :name, :uniqueness => true
end

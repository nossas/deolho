class Word < ActiveRecord::Base
  attr_accessible :long_description, :short_description, :title
  validates :long_description, :short_description, :title, :presence => true
  validates :title, :uniqueness => true
end

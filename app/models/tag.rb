class Tag < ActiveRecord::Base
  attr_accessible :name
  validate :name, :presence => true
  validate :name, :uniqueness => true
  has_and_belongs_to_many :posts

  scope :by_popularity, order("(SELECT COUNT(*) FROM posts_tags WHERE tag_id = tags.id) DESC")

  def to_param
    "#{self.id}-#{self.name.parameterize}"
  end
end

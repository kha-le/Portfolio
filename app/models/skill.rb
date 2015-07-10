class Skill < ActiveRecord::Base
  has_many :comments

  validates :name, :presence => true
  validates :description, :presence => true
  validates :url, :presence => true
end

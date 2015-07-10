class Comment < ActiveRecord::Base
  belongs_to :skill

  validates :author, :presence => true
  validates :body, :presence => true
end

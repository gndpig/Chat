class Message < ActiveRecord::Base
  attr_accessible :content
  # attr_accessible :title, :body
  belongs_to :user
  validates :content, :presence => true
end

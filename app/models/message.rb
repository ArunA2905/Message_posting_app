class Message < ApplicationRecord
  belongs_to :user, class_name: "User"
  validates :message, presence: true, length: {minimum:1, maximum:100} 
end
class Message include ActiveModel::Model
 
  attr_accessor :name, :email, :content, :phone, :date, :time, :number
 
  validates :name, presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 30 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :content, length: { maximum: 200 }
end
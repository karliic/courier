class Delivery < ActiveRecord::Base
    attr_accessible :content, :finish, :name, :number, :start, :road, :end, :user_id, :admin_id,:city, :weight, :price
  
  belongs_to :user
  belongs_to :admin

  validates :content, presence: true
  validates :finish, presence: true
  validates :name, presence: true
  validates :number, presence: true, :numericality => true
  validates :start, presence: true
  validates :city, presence: true
end

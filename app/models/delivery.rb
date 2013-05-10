class Delivery < ActiveRecord::Base
    attr_accessible :item_id, :content, :finish, :name, :number, :start, :road, :end, :user_id, :admin_id,:city, :weight, :price
  

    def order
      @order ||= Order.find(order_id) unless order_id.blank?
    end

  belongs_to :user
  belongs_to :admin

  #validates :content, presence: true
  #validates :finish, presence: true
  #validates :name, presence: true
  #validates :number, presence: true, :numericality => true
  #validates :start, presence: true
  #validates :city, presence: true
  validates :weight, presence: true
end

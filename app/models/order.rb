class Order < ActiveRecord::Base
  attr_accessible :content, :finish, :name, :number, :start, :road, :end, :user_id, :admin_id
  
  belongs_to :user
  belongs_to :admin
end

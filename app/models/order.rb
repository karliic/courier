class Order < ActiveResource::Base
  self.site = "http://e-burger.maris-cilitis.com/"
  self.element_name = "public-orders"
end
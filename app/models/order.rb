class Order < ActiveResource::Base
  self.site = "http://eburger-appzz.rhcloud.com/"
  self.element_name = "public-orders"
end
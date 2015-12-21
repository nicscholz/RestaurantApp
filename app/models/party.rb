class Party < ActiveRecord::Base
   has_many :orders
   has_many :items, through: :orders
end

class Owner < ActiveRecord::Base
	belongs_to :petstore
	has_many :pets

end

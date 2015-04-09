class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	
	def title
     raise
   	end
end


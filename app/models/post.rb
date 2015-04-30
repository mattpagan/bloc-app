class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	belongs_to :topic

	# Default_scope { order('created_at DESC') }
end


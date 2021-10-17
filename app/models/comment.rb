class Comment < ActiveRecord::Base
	
	belongs_to :article

	def self.comment_count
		Comment.count
	end 

	def self.find_comment_with_id(id)
		Comment.find(id)
	end

	def self.update_all_comments(comment)
		Comment.update(comment: comment)
       end

end 
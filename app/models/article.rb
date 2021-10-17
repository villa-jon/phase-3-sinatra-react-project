class Article < ActiveRecord::Base

	has_many :comments
	
	def self.article_count
		Article.count
	end 

	def self.find_article_with_id(id)
		Article.find(id)
	end


end
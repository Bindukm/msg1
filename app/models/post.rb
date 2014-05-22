class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 1 }

                    def self.search(search)
 		if search
    		self.where("title LIKE ? ", "#{search}%")
    	else
    		self.all
  		end
	end
                    
end

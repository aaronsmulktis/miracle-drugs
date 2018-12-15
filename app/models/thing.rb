class Thing < ApplicationRecord
    # attr_accessible :title, :description, :content, :uri, :price, :created_at, :likes, :available_at, :discount, :is_available, :keywords, :slug

    validates :title,  :presence => true
    validates :description, :presence => true,
                      :length => { :minimum => 50 }
    validates :content, :presence => true,
                      :length => { :minimum => 50 }
end

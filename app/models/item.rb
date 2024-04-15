class Item < ApplicationRecord
    belongs_to :user
    validates :title, :price, :contact, :location, :condition, :description, :image, :user_id, presence: true
end

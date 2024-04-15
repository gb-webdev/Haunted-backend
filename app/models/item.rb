class Item < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :price, presence: true
    validates :contact, presence: true
    validates :location, presence: true
    validates :condition, presence: true
    validates :description, presence: true
    validates :image, presence: true
end

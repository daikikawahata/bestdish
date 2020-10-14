class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  validates :name, :address, :category, presence: true

  validates :category_id, numericality: { other_than: 1 }

  belongs_to :user

  has_one_attached :image

  def self.search(search)
    if search != ""
      Shop.where('name Like(?)', "%#{search}%")
    else
      Shop.all
    end
  end
end
class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  enum category: { tops: 0, bottoms: 1, others: 2 }

  # 単一価格だけを扱う
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :name, presence: true
end

class Styling < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  # ← これを追加
  has_many :styling_items, dependent: :destroy
  has_many :items, through: :styling_items

  # 価格レンジのバリデーション（nil 許可なら presence は外す）
  validates :min_price, numericality: { allow_nil: true }
  validates :max_price, numericality: { allow_nil: true }
  validate  :min_less_than_max

  # 写真を必須にしたいなら
  # validates :photo, presence: true, on: :create

  private

  def min_less_than_max
    if min_price.present? && max_price.present? && min_price > max_price
      errors.add(:min_price, "は最大価格より小さくしてください")
    end
  end
end

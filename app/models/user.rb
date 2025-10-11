class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :stylings, dependent: :destroy
  has_many :items,    dependent: :destroy
end

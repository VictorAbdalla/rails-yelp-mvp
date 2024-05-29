class Restaurant < ApplicationRecord
  CATEGORIES = %w[Chinese Italian Japanese French Belgian].freeze
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end

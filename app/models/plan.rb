class Plan < ApplicationRecord
  before_validation :set_slug, if: -> { slug.blank? && name.present? }

  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price_cents, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :position, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :features_must_be_an_array

  scope :active, -> { where(active: true) }
  scope :ordered, -> { order(position: :asc, created_at: :asc) }

  def price
    price_cents.to_f / 100
  end

  def formatted_price
    "R$#{price.to_i}"
  end

  private

  def set_slug
    self.slug = name.parameterize
  end

  def features_must_be_an_array
    return if features.is_a?(Array)

    errors.add(:features, "deve ser uma lista")
  end
end

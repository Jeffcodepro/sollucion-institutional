class Solution < ApplicationRecord
  before_validation :set_slug, if: -> { slug.blank? && title.present? }

  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :summary, presence: true
  validates :position, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :active, -> { where(active: true) }
  scope :ordered, -> { order(position: :asc, created_at: :asc) }

  private

  def set_slug
    self.slug = title.parameterize
  end
end

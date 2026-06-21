class BlogPost < ApplicationRecord
  belongs_to :blog_category

  enum :status, {
    draft: 0,
    published: 1,
    archived: 2
  }

  before_validation :set_slug, if: -> { slug.blank? && title.present? }

  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :excerpt, presence: true
  validates :content, presence: true
  validates :status, presence: true
  validates :position, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :active, -> { where(active: true) }
  scope :ordered, -> { order(position: :asc, created_at: :desc) }
  scope :visible, -> { active.published.where("published_at <= ?", Time.current) }

  private

  def set_slug
    self.slug = title.parameterize
  end
end

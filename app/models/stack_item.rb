class StackItem < ApplicationRecord
  CATEGORIES = [
    "Automação",
    "Desenvolvimento",
    "Inteligência Artificial",
    "Atendimento",
    "Dados",
    "Infraestrutura",
    "Produtividade"
  ].freeze

  before_validation :set_slug, if: -> { slug.blank? && name.present? }

  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :description, presence: true
  validates :position, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :active, -> { where(active: true) }
  scope :ordered, -> { order(position: :asc, created_at: :asc) }

  private

  def set_slug
    self.slug = name.parameterize
  end
end

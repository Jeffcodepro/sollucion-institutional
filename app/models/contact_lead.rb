class ContactLead < ApplicationRecord
  enum :status, {
    new_lead: 0,
    contacted: 1,
    proposal_sent: 2,
    closed: 3,
    archived: 4
  }

  INTERESTS = [
    "Plataforma de atendimento",
    "Automação de processos",
    "Agentes de IA",
    "Integração entre sistemas",
    "Site ou landing page",
    "Infraestrutura web",
    "Outro"
  ].freeze

  before_validation :set_defaults

  validates :name, presence: true
  validates :document, presence: true
  validates :document, format: { with: /\A[\d.\-\/\s]+\z/, message: "deve conter apenas numeros e pontuacao" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true
  validates :interest, presence: true
  validates :message, presence: true
  validates :status, presence: true
  validates :source, presence: true

  scope :recent, -> { order(created_at: :desc) }

  private

  def set_defaults
    self.status ||= :new_lead
    self.source = source.presence || "contact_page"
  end
end

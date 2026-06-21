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

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message, presence: true
  validates :status, presence: true
  validates :source, presence: true

  scope :recent, -> { order(created_at: :desc) }
end

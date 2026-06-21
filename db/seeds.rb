# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Limpando dados..."

ContactLead.destroy_all
BlogPost.destroy_all
BlogCategory.destroy_all
Plan.destroy_all
StackItem.destroy_all
Solution.destroy_all

puts "Criando soluções..."

solutions = [
  {
    title: "Plataforma de atendimento inteligente",
    summary: "Centralize conversas, organize atendimentos e conecte fluxos de chatbot com IA.",
    description: "A plataforma da Sollucion ajuda empresas a organizar canais, acompanhar atendimentos e criar jornadas automatizadas para melhorar a experiência do cliente.",
    icon: "💬",
    position: 1
  },
  {
    title: "Automação de processos operacionais",
    summary: "Automatize tarefas repetitivas, notificações, cadastros, follow-ups e rotinas internas.",
    description: "Criamos automações para reduzir retrabalho, padronizar processos e conectar etapas importantes da operação.",
    icon: "⚙️",
    position: 2
  },
  {
    title: "Integração entre sistemas e canais",
    summary: "Conecte APIs, CRMs, planilhas, formulários, bancos de dados e canais digitais.",
    description: "Integramos ferramentas para que as informações circulem com mais clareza, reduzindo gargalos e erros manuais.",
    icon: "🔗",
    position: 3
  },
  {
    title: "Agentes de IA para atendimento e vendas",
    summary: "Crie agentes inteligentes para responder clientes, qualificar leads e apoiar sua equipe.",
    description: "Desenvolvemos agentes de IA conectados ao contexto da sua empresa para atendimento, vendas, suporte e triagem.",
    icon: "🤖",
    position: 4
  },
  {
    title: "Sites e aplicações web",
    summary: "Desenvolvemos sites institucionais, landing pages, dashboards e sistemas internos.",
    description: "Criamos experiências digitais modernas, responsivas e focadas em credibilidade, performance e conversão.",
    icon: "🌐",
    position: 5
  },
  {
    title: "Infraestrutura e sustentação técnica",
    summary: "Configuramos servidores, deploy, SSL, banco de dados, containers e proxy reverso.",
    description: "Preparamos ambientes técnicos para aplicações modernas, com foco em estabilidade, organização e evolução.",
    icon: "☁️",
    position: 6
  }
]

solutions.each do |attributes|
  Solution.create!(attributes)
end

puts "Criando stack..."

stack_items = [
  {
    name: "Automação e orquestração",
    category: "Automação",
    description: "Criação de fluxos automatizados, webhooks, integrações e rotinas operacionais.",
    examples: "n8n, APIs, Webhooks",
    position: 1
  },
  {
    name: "Desenvolvimento web",
    category: "Desenvolvimento",
    description: "Construção de sites, landing pages, sistemas internos, dashboards e aplicações modernas.",
    examples: "Ruby on Rails, HTML, CSS, JavaScript",
    position: 2
  },
  {
    name: "Inteligência artificial",
    category: "Inteligência Artificial",
    description: "Agentes inteligentes para atendimento, qualificação de leads, suporte, triagem e automação de respostas.",
    examples: "IA generativa, agentes e fluxos",
    position: 3
  },
  {
    name: "Canais de atendimento",
    category: "Atendimento",
    description: "Integração de canais digitais para melhorar atendimento, histórico de conversas e organização.",
    examples: "WhatsApp, Instagram, Facebook",
    position: 4
  },
  {
    name: "Dados e bancos",
    category: "Dados",
    description: "Estruturação de dados, armazenamento, consultas, relatórios e organização das informações.",
    examples: "PostgreSQL, planilhas e dashboards",
    position: 5
  },
  {
    name: "Cloud e infraestrutura",
    category: "Infraestrutura",
    description: "Configuração de servidores, deploy, SSL, proxy reverso e aplicações em produção.",
    examples: "Docker, Traefik, VPS, SSL",
    position: 6
  }
]

stack_items.each do |attributes|
  StackItem.create!(attributes)
end

puts "Criando planos..."

plans = [
  {
    name: "Standard",
    description: "Para empresas que precisam iniciar sua presença digital e organizar processos básicos.",
    price_cents: 39700,
    highlighted: false,
    features: [
      "Site ou landing page institucional",
      "Configuração inicial de presença digital",
      "Ajustes básicos de comunicação",
      "Acompanhamento recorrente"
    ],
    position: 1
  },
  {
    name: "Premium",
    description: "Para operações que querem integrar atendimento, vendas e automações essenciais.",
    price_cents: 49700,
    highlighted: true,
    features: [
      "Tudo do Standard",
      "Fluxos de atendimento automatizado",
      "Integrações com formulários e planilhas",
      "Otimização da jornada comercial",
      "Monitoramento e melhorias mensais"
    ],
    position: 2
  },
  {
    name: "Business",
    description: "Para empresas que precisam de uma estrutura mais completa de automação, IA e operação digital.",
    price_cents: 59700,
    highlighted: false,
    features: [
      "Tudo do Premium",
      "Agentes de IA personalizados",
      "Integrações com APIs e sistemas externos",
      "Funil, kanban e visão operacional",
      "Arquitetura de automação avançada"
    ],
    position: 3
  }
]

plans.each do |attributes|
  Plan.create!(attributes)
end

puts "Criando blog..."

automation = BlogCategory.create!(
  name: "Automação",
  position: 1
)

ai = BlogCategory.create!(
  name: "Inteligência Artificial",
  position: 2
)

integrations = BlogCategory.create!(
  name: "Integrações",
  position: 3
)

BlogPost.create!(
  blog_category: ai,
  title: "Como um chatbot com IA pode melhorar o atendimento da sua empresa",
  excerpt: "Entenda como fluxos inteligentes ajudam a responder clientes, coletar informações e direcionar atendimentos com mais velocidade.",
  content: "O atendimento é uma das áreas que mais sofre quando a empresa começa a crescer. Um chatbot com IA ajuda a responder dúvidas frequentes, coletar informações importantes, identificar solicitações e direcionar o atendimento para a etapa correta. O objetivo não é substituir completamente o atendimento humano, mas reduzir tarefas repetitivas e permitir que a equipe foque em conversas mais estratégicas.",
  status: :published,
  reading_time: "5 min de leitura",
  published_at: Time.current,
  position: 1
)

BlogPost.create!(
  blog_category: automation,
  title: "O que é automação com n8n e quando sua empresa deveria usar",
  excerpt: "Veja como ferramentas de automação conectam sistemas, eliminam tarefas repetitivas e reduzem erros operacionais.",
  content: "Automação com n8n permite conectar ferramentas e criar fluxos entre sistemas sem depender de ações manuais para cada etapa. É possível integrar formulários, planilhas, CRMs, APIs, e-mails, bancos de dados e canais de atendimento em uma mesma lógica operacional.",
  status: :published,
  reading_time: "6 min de leitura",
  published_at: Time.current,
  position: 2
)

BlogPost.create!(
  blog_category: integrations,
  title: "Por que integrar WhatsApp, CRM, planilhas e sistemas internos",
  excerpt: "Saiba como a integração entre canais e ferramentas melhora a visão da operação e evita perda de oportunidades.",
  content: "Quando cada informação fica em um lugar diferente, a operação perde velocidade e clareza. Integrar WhatsApp, CRM, planilhas e sistemas internos ajuda a manter dados atualizados, reduzir erros e melhorar a tomada de decisão.",
  status: :published,
  reading_time: "4 min de leitura",
  published_at: Time.current,
  position: 3
)

puts "Seeds criadas com sucesso!"

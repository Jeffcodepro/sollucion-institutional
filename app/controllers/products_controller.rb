class ProductsController < ApplicationController
  def index
    @products = products
  end

  def show
    @product = products.find { |product| product[:slug] == params[:slug] }

    redirect_to products_path, alert: "Produto não encontrado." unless @product
  end

  private

  def products
    [
      {
        slug: "go-atendi",
        name: "GO ATendi",
        subtitle: "Atendimento inteligente centralizado em uma única plataforma.",
        category: "Plataforma de atendimento",
        image: "products/go-atendi.png",
        icon: "fa-solid fa-comments",
        short_description: "Centralize conversas de canais como WhatsApp, Instagram, Messenger e outros em uma plataforma moderna, organizada e preparada para atendimento com agentes inteligentes.",
        description: "O GO ATendi é uma plataforma desenvolvida para empresas que precisam organizar, centralizar e evoluir o atendimento digital. A solução conecta diferentes canais de comunicação em um único ambiente, permitindo que o time acompanhe conversas, histórico, status, métricas e automações de forma mais clara.",
        highlight: "Ideal para empresas que recebem contatos por múltiplos canais e querem melhorar tempo de resposta, organização e experiência do cliente.",
        features: [
          "Centralização de conversas em múltiplos canais",
          "Organização de atendimentos por status e responsáveis",
          "Apoio com agentes inteligentes para triagem e respostas",
          "Histórico de conversas e acompanhamento da jornada do cliente",
          "Dashboard com indicadores de atendimento e performance",
          "Base preparada para integração com automações e outros sistemas"
        ],
        deliverables: [
          "Configuração da plataforma",
          "Estruturação dos canais de atendimento",
          "Organização inicial dos fluxos",
          "Treinamento básico de uso",
          "Acompanhamento para evolução da operação"
        ],
        cta: "Conhecer o GO ATendi"
      },
      {
        slug: "automacoes-integracoes-n8n",
        name: "Automações e integrações com n8n",
        subtitle: "Fluxos automatizados para conectar ferramentas e reduzir tarefas manuais.",
        category: "Automação e integração",
        image: "products/n8n.png",
        icon: "fa-solid fa-gears",
        short_description: "Criamos automações e integrações com n8n para conectar sistemas, planilhas, CRMs, APIs, formulários, alertas e processos internos.",
        description: "As automações com n8n ajudam empresas a economizarem tempo, reduzirem retrabalho e conectarem ferramentas que antes funcionavam de forma isolada. Criamos fluxos sob medida para operações comerciais, atendimento, financeiro, marketing, gestão de leads, notificações e organização de dados.",
        highlight: "Ideal para empresas que ainda dependem de tarefas repetitivas, planilhas manuais, cópia de dados entre sistemas ou processos sem integração.",
        features: [
          "Integração entre APIs, CRMs, planilhas e plataformas",
          "Automação de tarefas repetitivas e operacionais",
          "Webhooks para receber e enviar dados entre sistemas",
          "Alertas automáticos por e-mail, WhatsApp ou canais internos",
          "Organização e sincronização de informações",
          "Fluxos personalizados para cada necessidade da empresa"
        ],
        deliverables: [
          "Mapeamento do processo atual",
          "Desenho do fluxo de automação",
          "Implementação no n8n",
          "Testes e validação do fluxo",
          "Documentação básica da automação"
        ],
        cta: "Automatizar processos"
      },
      {
        slug: "desenvolvimento-web-sistemas",
        name: "Desenvolvimento web e sistemas",
        subtitle: "Páginas, sites e sistemas para inserir empresas no digital com mais estrutura.",
        category: "Desenvolvimento digital",
        image: "products/devweb.png",
        icon: "fa-solid fa-laptop-code",
        short_description: "Desenvolvemos páginas, sites institucionais, landing pages e sistemas web para empresas que querem presença digital, processos online e mais profissionalismo.",
        description: "O desenvolvimento web da Sollucion é voltado para empresas que precisam construir ou evoluir sua presença digital. Criamos desde páginas comerciais e institucionais até sistemas internos, áreas administrativas, formulários, dashboards e aplicações conectadas com automações e bancos de dados.",
        highlight: "Ideal para empresas que querem sair de processos improvisados e construir uma presença digital mais profissional, escalável e conectada.",
        features: [
          "Sites institucionais e páginas comerciais",
          "Landing pages para campanhas e captação",
          "Sistemas internos e aplicações web",
          "Dashboards e painéis administrativos",
          "Formulários e fluxos conectados com automações",
          "Deploy e estruturação do ambiente digital"
        ],
        deliverables: [
          "Planejamento da estrutura da página ou sistema",
          "Desenvolvimento responsivo",
          "Integração com formulários, dados ou automações",
          "Publicação em ambiente online",
          "Ajustes finais e orientação de uso"
        ],
        cta: "Desenvolver projeto web"
      }
    ]
  end
end

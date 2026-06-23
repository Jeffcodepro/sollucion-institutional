class BlogController < ApplicationController
  def index
    @posts = blog_posts
  end

  def show
    @post = blog_posts.find { |post| post[:slug] == params[:slug] }

    redirect_to blog_path, alert: "Conteúdo não encontrado." unless @post
  end

  private

  def blog_posts
    [
      {
        slug: "n8n-automacao-inteligente-negocios",
        title: "n8n e automação inteligente: como acelerar decisões e organizar operações",
        image: "blog/n8n-blog.png",
        published_at: Date.new(2026, 6, 22),
        category: "Automação e integração",
        excerpt: "Entenda como automações com n8n podem transformar dados, tarefas e decisões em uma operação mais rápida, conectada e inteligente.",
        intro: "Empresas que crescem no digital normalmente enfrentam o mesmo desafio: muitas ferramentas, muitos dados, muitos canais e pouco tempo para transformar tudo isso em decisão. É nesse cenário que automações com n8n podem gerar um impacto direto na operação.",
        sections: [
          {
            title: "Velocidade na obtenção de informações",
            body: "Quando uma empresa depende de processos manuais para buscar informações, copiar dados entre sistemas ou atualizar relatórios, a tomada de decisão fica mais lenta. Com automações bem estruturadas, informações importantes podem ser coletadas, organizadas e entregues no momento certo para as pessoas certas."
          },
          {
            title: "Dados organizados para decisões melhores",
            body: "O n8n permite conectar planilhas, CRMs, bancos de dados, APIs, formulários, sistemas internos e canais de comunicação. Isso ajuda a transformar dados espalhados em fluxos mais claros, reduzindo retrabalho e dando mais visibilidade para áreas como vendas, atendimento, financeiro, marketing e gestão."
          },
          {
            title: "Agentes digitais para tarefas diárias",
            body: "Além das automações tradicionais, é possível criar agentes que ajudam na execução de tarefas digitais. Esses agentes podem analisar mensagens, classificar informações, resumir dados, apoiar atendimentos, organizar demandas e acionar fluxos automaticamente de acordo com o contexto."
          },
          {
            title: "Automação da coleta e da apresentação dos dados",
            body: "Automatizar não significa apenas executar tarefas escondidas. Também significa apresentar informações de forma mais útil. Relatórios, alertas, dashboards, notificações e resumos podem ser enviados automaticamente, permitindo que a empresa acompanhe indicadores sem depender de processos repetitivos."
          },
          {
            title: "Impacto direto no negócio",
            body: "Quando a operação ganha velocidade, clareza e organização, a empresa consegue responder melhor aos clientes, identificar problemas mais cedo, tomar decisões com mais segurança e liberar tempo da equipe para atividades mais estratégicas."
          }
        ],
        conclusion: "O n8n não é apenas uma ferramenta de automação. Quando bem aplicado, ele se torna uma ponte entre sistemas, pessoas, dados e decisões. Para empresas que querem crescer com mais eficiência, esse tipo de estrutura pode representar menos trabalho manual, mais previsibilidade e uma operação mais inteligente."
      },
      {
        slug: "infraestrutura-digital-vps-cloud-performance",
        title: "Infraestrutura digital: como VPS, cloud e performance afetam o crescimento online",
        image: "blog/infra-blog.png",
        published_at: Date.new(2026, 6, 22),
        category: "Infraestrutura digital",
        excerpt: "Veja como uma boa estrutura digital influencia velocidade, estabilidade, segurança e confiança na presença online de uma empresa.",
        intro: "A infraestrutura digital é uma parte invisível para muitos negócios, mas ela impacta diretamente a experiência do cliente, a velocidade do site, a estabilidade dos sistemas e a confiança que a empresa transmite no ambiente online.",
        sections: [
          {
            title: "Performance influencia experiência e conversão",
            body: "Sites lentos, páginas instáveis e sistemas que demoram para responder prejudicam a experiência do usuário. Em muitos casos, o cliente desiste antes mesmo de conhecer a empresa. Uma boa infraestrutura ajuda a manter carregamento rápido, navegação fluida e uma presença digital mais profissional."
          },
          {
            title: "VPS e cloud como base para projetos digitais",
            body: "Uma VPS ou ambiente cloud bem configurado permite que sites, sistemas, APIs, automações e bancos de dados funcionem com mais organização. Isso dá à empresa mais controle sobre seus projetos digitais e cria uma base mais preparada para crescimento."
          },
          {
            title: "Estabilidade para operações que não podem parar",
            body: "Quando uma empresa depende de sistemas online, atendimento digital, páginas de venda ou integrações, instabilidade pode significar perda de oportunidades. Estruturar corretamente servidores, domínios, certificados, backups e monitoramento reduz riscos e melhora a continuidade da operação."
          },
          {
            title: "Segurança e organização técnica",
            body: "Infraestrutura não é apenas colocar um projeto no ar. Também envolve segurança, separação de ambientes, controle de acesso, atualizações, proteção de dados e boas práticas para evitar falhas que podem comprometer a operação."
          },
          {
            title: "Escalabilidade para acompanhar o crescimento",
            body: "À medida que uma empresa cresce, a estrutura digital precisa acompanhar esse movimento. Uma arquitetura bem pensada permite evoluir projetos, adicionar serviços, integrar novas ferramentas e suportar mais acessos sem transformar cada melhoria em um problema técnico."
          }
        ],
        conclusion: "Investir em infraestrutura digital é investir na base que sustenta a presença online da empresa. Performance, segurança, estabilidade e organização técnica impactam diretamente a confiança do cliente, a eficiência interna e a capacidade do negócio de crescer no digital."
      },
      {
        slug: "desenvolvimento-web-presenca-digital-empresas",
        title: "Desenvolvimento web e presença digital: por que sua empresa precisa de uma base online forte",
        image: "blog/devweb-blog.png",
        published_at: Date.new(2026, 6, 23),
        category: "Desenvolvimento web",
        excerpt: "Entenda como sites, landing pages e sistemas web ajudam empresas a gerar confiança, captar oportunidades e organizar processos no digital.",
        intro: "A presença digital deixou de ser apenas um cartão de visitas online. Para muitas empresas, ela se tornou o primeiro ponto de contato com clientes, parceiros e oportunidades comerciais. Um site bem estruturado, uma landing page estratégica ou um sistema web sob medida podem influenciar diretamente a forma como a empresa é percebida e como ela opera.",
        sections: [
          {
            title: "Site institucional ainda vale a pena?",
            body: "Sim. Um site institucional continua sendo uma base importante de confiança, posicionamento e autoridade. Ele ajuda a apresentar a empresa, seus serviços, seus diferenciais e seus canais de contato de forma organizada. Mesmo que a empresa venda por WhatsApp, Instagram ou indicação, o site funciona como um ponto central de validação e profissionalismo."
          },
          {
            title: "Landing page ou site completo: qual escolher?",
            body: "A landing page é indicada quando a empresa quer divulgar uma oferta específica, captar leads ou direcionar uma campanha. Já o site completo faz mais sentido quando o objetivo é apresentar a marca de forma mais ampla, explicar serviços, mostrar conteúdos, reforçar autoridade e construir uma presença digital mais sólida."
          },
          {
            title: "Quando sair da planilha e criar um sistema próprio",
            body: "Muitas empresas começam controlando processos em planilhas. Isso funciona por um tempo, mas pode se tornar um problema quando surgem muitos dados, muitos usuários, erros manuais e dificuldade de histórico. Um sistema próprio pode organizar cadastros, pedidos, atendimentos, relatórios e permissões com mais segurança e eficiência."
          },
          {
            title: "Sistemas web para organizar processos internos",
            body: "Um sistema web pode centralizar informações que hoje estão espalhadas entre mensagens, planilhas e ferramentas diferentes. Painéis administrativos, cadastros de clientes, controle de pedidos, dashboards e áreas internas ajudam a empresa a reduzir retrabalho e acompanhar melhor sua operação."
          },
          {
            title: "Presença digital também é estratégia de negócio",
            body: "Ter um site ou sistema não é apenas uma decisão técnica. É uma decisão estratégica. Uma boa estrutura digital ajuda a melhorar a comunicação com o mercado, aumentar a confiança do cliente, apoiar campanhas, organizar processos e preparar a empresa para crescer de forma mais profissional."
          }
        ],
        conclusion: "Desenvolvimento web e presença digital caminham juntos. Sites, landing pages e sistemas bem estruturados ajudam empresas a se posicionarem melhor, captarem oportunidades e organizarem sua operação. Para negócios que querem crescer no digital, essa base pode ser o primeiro passo para uma evolução mais consistente."
      },
      {
        slug: "estrategia-digital-negocios-operacao-organizada",
        title: "Estratégia digital para negócios: como organizar processos e evoluir com tecnologia",
        image: "blog/digital-blog.png",
        published_at: Date.new(2026, 6, 23),
        category: "Estratégia digital",
        excerpt: "Veja como pequenas melhorias digitais podem gerar ganhos operacionais, reduzir desorganização e preparar empresas para crescer com mais eficiência.",
        intro: "Nem toda transformação digital precisa começar com um grande projeto. Em muitos casos, pequenas melhorias em processos, ferramentas e fluxos já são suficientes para gerar mais organização, velocidade e clareza na operação. O ponto principal é entender onde a tecnologia realmente pode ajudar o negócio.",
        sections: [
          {
            title: "Como saber se sua empresa está pronta para automatizar",
            body: "Uma empresa está pronta para automatizar quando já consegue identificar tarefas repetitivas, dados importantes e processos que seguem uma lógica clara. Se existem atividades feitas todos os dias da mesma forma, informações copiadas entre sistemas ou relatórios montados manualmente, provavelmente há espaço para automação."
          },
          {
            title: "Processos definidos antes da tecnologia",
            body: "Antes de escolher uma ferramenta, é importante entender como o processo funciona. Quem executa? Quais dados entram? Quais decisões precisam ser tomadas? Quais informações devem ser entregues no final? Quando esse caminho está claro, a tecnologia consegue potencializar a operação em vez de apenas digitalizar a desorganização."
          },
          {
            title: "Tecnologia sob medida ou ferramenta pronta?",
            body: "Ferramentas prontas são boas quando resolvem bem um problema comum. Automações com n8n fazem sentido quando a empresa já usa várias ferramentas e precisa conectá-las. Já sistemas sob medida são indicados quando o processo é específico, estratégico ou quando as soluções prontas não acompanham a necessidade do negócio."
          },
          {
            title: "Sinais de uma operação digital desorganizada",
            body: "Mensagens perdidas, dados duplicados, relatórios atrasados, processos dependentes de uma única pessoa e sistemas que não conversam são sinais de alerta. Esses problemas reduzem a velocidade da empresa, aumentam erros e dificultam a tomada de decisão."
          },
          {
            title: "Pequenas melhorias podem gerar grandes ganhos",
            body: "A evolução digital pode começar com um formulário melhor estruturado, uma automação simples, um alerta automático, uma landing page mais eficiente ou um painel com indicadores importantes. O segredo é começar por pontos que geram impacto real e depois evoluir a estrutura conforme o negócio amadurece."
          }
        ],
        conclusion: "Estratégia digital não é sobre usar tecnologia por usar. É sobre entender o momento da empresa, organizar processos e aplicar soluções que gerem eficiência, clareza e crescimento. Quando bem planejada, a tecnologia deixa de ser custo e passa a ser uma base para evolução do negócio."
      }
    ]
  end
end

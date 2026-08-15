# Potencial de um SaaS vertical para empresas de piscinas em Portugal

**Análise estratégica — 15 de agosto de 2026**  
**Contexto:** CRM, gestão de equipas, agendas de intervenções, alertas, transparência para clientes e relatórios de serviço.

## Conclusão executiva

O produto tem **potencial real**, mas o mercado português, isoladamente, provavelmente não é suficientemente grande para suportar uma estratégia SaaS genérica ou uma estrutura comercial pesada. A oportunidade existe porque as empresas de manutenção de piscinas têm uma operação recorrente, geograficamente dispersa, dependente de equipas de campo e com forte necessidade de provar que o serviço foi realizado. Estes fatores são particularmente favoráveis a software vertical.

A proposta deve, contudo, ser posicionada menos como “um CRM para piscinas” e mais como **o sistema operativo da empresa de manutenção de piscinas**. CRM é uma funcionalidade conhecida e comparável com soluções horizontais. O valor difícil de substituir está na combinação entre carteira de piscinas, contratos recorrentes, rotas, equipas, intervenções, medições químicas, fotografias, faltas, reagendamentos, relatórios e comunicação transparente com o cliente.

A minha recomendação é **não começar por desenvolver hardware próprio nem por fazer da telemetria o centro do produto**. Deve construir o SaaS como uma plataforma **telemetria-ready**, com um modelo de dados e uma camada de integrações preparada para Fluidra, Pentair, ProMinent, Loxone, Blueriiot e outros fabricantes. A telemetria deve entrar primeiro como módulo premium ou como integração seletiva para clientes com instalações compatíveis, não como requisito de entrada.

O foco inicial deveria ser:

> **Reduzir visitas mal planeadas, deslocações desnecessárias, chamadas de clientes, trabalho administrativo e disputas sobre o que foi feito — aumentando simultaneamente o número de piscinas que cada equipa consegue servir.**

## 1. Atratividade do problema

O problema é operacionalmente intenso. Uma empresa de manutenção gere visitas recorrentes, piscinas com frequências diferentes, técnicos com competências distintas, emergências, faltas, alterações meteorológicas, consumíveis, produtos químicos, fotografias, chaves/acessos e expectativas dos proprietários. Uma agenda genérica não conhece o contexto técnico da piscina; um CRM genérico não conhece a lógica de uma visita de manutenção; uma aplicação de telemetria não gere a equipa que tem de intervir.

O seu produto está bem colocado precisamente na interseção entre estas necessidades. As funcionalidades que descreve já atacam problemas com impacto financeiro e reputacional direto: planear intervenções, avisar equipas e clientes, mostrar visitas futuras, documentar faltas e intervenções e produzir relatórios.

| Problema do cliente | Custo atual provável | O seu produto pode criar valor através de |
|---|---|---|
| Visitas esquecidas ou mal reagendadas | Deslocações, perda de confiança e reclamações | Agenda recorrente, alertas, estados e reagendamento controlado |
| Falta de prova do serviço | Discussões sobre visitas e qualidade | Relatório, fotografias, hora/local, checklist e assinatura/opção de aprovação |
| Técnico sem informação no local | Tempo perdido e erros | Ficha completa da piscina, histórico, instruções e consumos no telemóvel |
| Proprietário sem visibilidade | Chamadas, ansiedade e percepção de serviço fraco | Portal do cliente, calendário futuro e notificações proativas |
| Operação dependente do dono | Impossibilidade de escalar | Processos, permissões, dashboards e histórico centralizado |
| Rotas pouco eficientes | Combustível e menor produtividade | Planeamento geográfico, agrupamento por zona e gestão de recorrência |
| Medições dispersas em papel/WhatsApp | Risco técnico, pouca rastreabilidade | Registo estruturado de pH, cloro, temperatura, produtos e anomalias |
| Muitas intervenções urgentes | Margem e capacidade imprevisíveis | Alertas, triagem, prioridades e manutenção preventiva |

## 2. Potencial do mercado português

A Associação Portuguesa de Profissionais de Piscina, Instalações Desportivas e Lazer existe desde 1998 e afirma representar e apoiar empresas e profissionais ligados ao setor em Portugal. Também disponibiliza formação para manutenção de piscinas públicas e privadas, documentação de boas práticas, relatórios setoriais e apoio técnico [1]. Isto confirma que existe um ecossistema profissional organizado e oferece um canal potencial para validar e distribuir o produto.

A informação pública disponível não permite determinar com precisão o número de empresas de manutenção de piscinas, o número médio de técnicos por empresa ou o software que utilizam. O setor parece ser composto por uma combinação de empresas especializadas, construtores/instaladores que também prestam manutenção, distribuidores com serviço técnico, profissionais locais e operadores de maior dimensão ligados a hotéis, condomínios e piscinas públicas. Esta fragmentação favorece um produto simples e vertical, mas limita o valor médio de cada contrato.

A concorrência também deve ser entendida corretamente. Já existem soluções horizontais de field service e software internacional para serviços de piscina, incluindo agendamento, rotas, despacho, faturação, formulários de medições e portais. Diretórios como GetApp e Capterra apresentam opções como Jobber, Synchroteam, Zuper, EasyWeek, MarketBox e outras [2] [3]. Em Portugal existe ainda a InnuxSports, uma solução nacional focada sobretudo em piscinas públicas, complexos desportivos, ginásios e spas, com controlo de acessos, clientes, reservas, pagamentos, stocks, comunicação e faturação [4].

Isto significa que a oportunidade não é “não existe software”. A oportunidade é oferecer uma solução **mais adequada ao fluxo diário de uma empresa de manutenção externa**, com melhor localização portuguesa, menor complexidade e maior profundidade operacional no domínio das piscinas.

### Avaliação qualitativa

| Dimensão | Avaliação | Leitura estratégica |
|---|---:|---|
| Intensidade do problema | **Alta** | A operação envolve recorrência, equipas de campo e prova de serviço. |
| Adequação do SaaS vertical | **Alta** | O domínio permite fluxos e dados que um CRM genérico não oferece. |
| Tamanho de Portugal isoladamente | **Médio-baixo** | Deve ser validado; a expansão ibérica será provavelmente importante. |
| Concorrência direta especializada | **Média** | Existem soluções internacionais e adjacentes, mas pouca evidência de líder português claro. |
| Facilidade de venda | **Média-baixa** | Microempresas podem resistir a mudança e ter baixo orçamento. |
| Potencial de retenção | **Alto, se houver adoção operacional** | Agenda, histórico e relatórios criam dependência positiva. |
| Potencial de expansão | **Alto** | Portugal pode ser laboratório; Espanha e outros mercados têm maior escala. |

## 3. O maior risco: construir para um comprador que não paga

O seu produto pode ser muito útil e, ainda assim, ter dificuldade em gerar receita. Muitas empresas pequenas de manutenção funcionam com WhatsApp, Google Calendar, Excel, papel e memória do proprietário. O custo de não ter software é real, mas está distribuído por muitos pequenos desperdícios e nem sempre é percebido como uma despesa urgente.

O comprador não deve ser abordado com uma lista de funcionalidades. Deve ser abordado com resultados mensuráveis: “reduzir chamadas de confirmação”, “provar cada visita”, “evitar que uma ausência fique sem resposta”, “servir mais piscinas por técnico”, “saber quais contratos estão em risco” e “não depender da memória do proprietário”.

Há também uma questão de segmentação. A empresa com um único técnico pode considerar o produto caro ou complexo. A empresa com três a quinze técnicos, dezenas ou centenas de piscinas e contratos recorrentes tem um problema suficientemente doloroso para pagar. Hotéis, condomínios, empresas de facilities e operadores de piscinas públicas têm maior capacidade de pagamento, mas processos de venda mais longos e exigências superiores de integração, segurança e suporte.

| Segmento | Necessidade | Capacidade de pagamento | Dificuldade comercial | Prioridade |
|---|---|---:|---:|---:|
| Profissional individual | Agenda, clientes e lembretes | Baixa | Baixa | Baixa, exceto como plano de entrada |
| Microempresa com 2–4 técnicos | Rotas, equipas, prova de serviço | Média-baixa | Média | **Boa para validação** |
| Empresa com 5–15 técnicos | Escala, produtividade, controlo e portal | Média-alta | Média | **Segmento principal inicial** |
| Instalação/loja que também presta manutenção | CRM, contratos, intervenções e vendas | Média-alta | Média | **Boa oportunidade de canal** |
| Hotel, condomínio ou facility manager | SLA, auditoria, relatórios e alertas | Alta | Alta | Expansão/premium |
| Piscina pública/complexo desportivo | Conformidade, operação e acesso | Alta | Alta | Não deve ser o primeiro foco se o produto é manutenção externa |

## 4. Deve incluir telemetria?

### Resposta curta

**Sim, mas não deve fazer da telemetria o núcleo inicial do produto.** Deve incluir a capacidade de receber telemetria e transformá-la em trabalho operacional. A sua vantagem não será “mostrar pH numa aplicação”; será **converter um alerta técnico numa intervenção atribuída, priorizada, executada, documentada e comunicada ao cliente**.

A análise anterior mostrou que Fluidra/AstralPool oferece Fluidra Pool e Fluidra Connect, Pentair oferece IntelliPool, ProMinent oferece DULCOPOOL Pro, Loxone pode integrar-se com Innowater e existem analisadores como Blue Connect e Ondilo. Estas soluções já cobrem boa parte da aquisição e visualização dos dados [5] [6] [7] [8] [9]. Tentar competir inicialmente com o hardware proprietário desses fabricantes exigiria competências de instrumentação, certificação, suporte de campo, calibração, conectividade, inventário e responsabilidade técnica.

A oportunidade mais defensável é ficar **acima da camada de hardware**. O seu sistema pode ser o ponto central que recebe eventos de várias fontes e os converte em operações de manutenção.

### Telemetria: onde criar valor

| Camada | O que já existe no mercado | Oportunidade para o seu SaaS |
|---|---|---|
| Sensor/controlador | Sondas, controladores, gateways e doseadores proprietários | Não fabricar inicialmente; suportar dados normalizados |
| Aplicação do fabricante | Estado da piscina e equipamento compatível | Agregar várias marcas e instalações |
| Alerta técnico | “pH fora do intervalo” ou “falha do equipamento” | Criar incidente, prioridade e SLA automaticamente |
| Operação | Normalmente separada da telemetria | Atribuir técnico, agendar rota e reservar peças/químicos |
| Serviço | Registo manual ou aplicação distinta | Checklist, fotos, valores antes/depois e relatório automático |
| Cliente | Notificação limitada ou dependente da marca | Portal neutro com histórico, transparência e próximos passos |
| Gestão | Dados dispersos por fabricante | Dashboard de risco, contratos, rentabilidade e produtividade |

### O produto de telemetria que faz sentido

O primeiro módulo não deveria tentar controlar doseadores. Deveria permitir cadastrar uma piscina, escolher limites, receber alertas ou importar medições e executar um fluxo como:

> **Alerta de pH fora do intervalo → incidente criado → piscina classificada como risco alto → técnico com competência adequada atribuído → visita encaixada na rota → instruções e histórico apresentados → medição antes/depois registada → relatório enviado ao cliente → alerta encerrado com auditoria.**

Isto gera valor operacional mesmo quando a medição é manual. Quando a telemetria estiver disponível, o mesmo fluxo torna-se mais rápido e preventivo.

## 5. Onde se deve focar para oferecer mais valor

### 5.1. Prova de serviço e transparência para o cliente

Esta é provavelmente uma das melhores áreas de diferenciação. O cliente final não quer apenas saber que “a visita está marcada”; quer perceber se foi realizada, o que foi encontrado, o que foi feito, se existem problemas, o que será necessário no futuro e quanto poderá custar.

O portal do cliente deve mostrar um **histórico simples e credível**, sem expor complexidade desnecessária: data e hora, técnico, fotografias, checklist, medições relevantes, produtos aplicados, anomalias, recomendações, próxima visita e estado de pendências. O proprietário deve poder comunicar um problema com fotografia e acompanhar a resolução.

Isto é mais diferenciador do que um CRM genérico e pode reduzir chamadas e disputas. Deve ser construído como uma ferramenta de retenção da empresa de manutenção, não como um portal que incentive o cliente a trocar diretamente de prestador.

### 5.2. Motor de contratos recorrentes e intervenções

A unidade principal do seu produto não deve ser o “contacto”; deve ser o **contrato de manutenção associado a uma piscina**. Uma empresa pode ter vários contactos para uma piscina, várias piscinas para um cliente, serviços com frequências distintas, trabalhos extraordinários e períodos sazonais.

O modelo de dados deve tratar explicitamente:

| Entidade | Exemplos de informação |
|---|---|
| Cliente | Proprietário, condomínio, hotel, administrador, contactos e preferências |
| Piscina | Morada, tipo, volume, equipamentos, acessos, fotos, riscos e instruções |
| Contrato | Frequência, preço, SLA, época, serviços incluídos e exclusões |
| Plano de serviço | Checklist, medições, produtos, tarefas e competência necessária |
| Visita | Data planeada, técnico, rota, estado, duração e evidência |
| Incidente | Origem, prioridade, causa, SLA, responsável e resolução |
| Equipamento | Marca, modelo, data de instalação, garantia, manutenção e telemetria |
| Documento | Relatório, orçamento, fatura, análise laboratorial e consentimentos |

Esta estrutura cria uma vantagem de domínio que um CRM horizontal dificilmente reproduz sem extensa configuração.

### 5.3. Aplicação móvel offline-first para técnicos

Se a aplicação móvel falhar na sala técnica, o produto perde credibilidade imediatamente. Muitas piscinas têm cobertura de rede deficiente, e o técnico deve conseguir abrir a visita, ver a ficha, preencher o checklist, tirar fotografias e concluir o serviço sem ligação contínua. A sincronização deve ocorrer posteriormente com resolução de conflitos clara.

A aplicação deve privilegiar poucos toques e linguagem operacional. O técnico não quer preencher um CRM; quer concluir uma intervenção com segurança e rapidez. O fluxo ideal é abrir a rota, iniciar visita, executar checklist, registar exceções, anexar fotografias, indicar produtos/quantidades, gerar relatório e passar à próxima piscina.

### 5.4. Planeamento de rotas e exceções

Uma agenda é necessária, mas uma agenda inteligente é mais valiosa. O sistema deve agrupar visitas por proximidade, considerar duração estimada, competências, janelas horárias, acessos, urgências e disponibilidade de produtos. Deve também tratar exceções: cliente ausente, portão fechado, chuva, falta de produto, equipamento avariado, técnico doente e visita parcialmente concluída.

A empresa não precisa apenas de “ver a agenda”; precisa de saber **o que fica em risco quando algo corre mal**. Se um técnico faltar, o sistema deve mostrar contratos afetados, prioridade, distância, janela de reagendamento e impacto no SLA.

### 5.5. Relatórios que vendem continuidade

O relatório deve ser mais do que um PDF automático. Deve criar uma narrativa de manutenção: estado atual, trabalho realizado, alterações face à visita anterior, anomalias, recomendação e próxima ação. Um bom relatório ajuda o prestador a justificar o contrato e a vender trabalhos adicionais — reparação, substituição de bomba, cobertura, tratamento químico ou preparação sazonal — sem transformar o técnico num vendedor agressivo.

## 6. O que não deve construir já

Não recomendaria começar por fabricar um sensor universal de pH/cloro. O produto teria custos e riscos desproporcionais: calibração, envelhecimento de sondas, estabilidade química, responsabilidade sobre leituras, assistência e incompatibilidades hidráulicas. Também não começaria por suportar todas as marcas através de integrações profundas; isso pode consumir o roadmap antes de existir uma base de clientes pagantes.

Não tentaria competir de imediato com software completo de piscinas públicas, bilhética, controlo de acessos ou gestão de ginásios. A InnuxSports já cobre esse território com uma solução nacional que inclui clientes, reservas, vendas, stocks, comunicação, faturação e hardware de acesso [4]. O seu produto deve manter-se focado em empresas que **prestam manutenção no terreno**, não em operadores de instalações desportivas.

Também evitaria uma estratégia centrada apenas em “IA”. Pode usar IA para resumir relatórios, sugerir prioridades ou detetar anomalias, mas a diferenciação deve estar nos dados operacionais corretos e no fluxo de trabalho. Uma IA que gera texto sem melhorar a execução da rota terá pouco valor duradouro.

## 7. Posicionamento recomendado

A frase “CRM para empresas de piscinas” é compreensível, mas subvaloriza o produto. Sugestões de posicionamento mais fortes seriam:

> **A plataforma de operações para empresas de manutenção de piscinas: menos deslocações, mais controlo e prova de cada visita.**

> **Do alerta à intervenção concluída: gestão completa de contratos, equipas e piscinas.**

> **O portal que torna cada visita visível, comprovada e fácil de gerir.**

A promessa comercial deve ser demonstrável em 30 dias. Por exemplo: reduzir o tempo administrativo, diminuir visitas falhadas, aumentar a taxa de relatórios enviados no próprio dia e reduzir chamadas de confirmação. Não deve prometer inicialmente poupanças genéricas de energia ou ganhos de telemetria que dependem de hardware de terceiros.

## 8. Roadmap recomendado

### Fase 1 — Produto mínimo vendável

O núcleo deve incluir gestão de clientes, piscinas e contratos; agenda recorrente; técnicos e permissões; aplicação móvel; checklists configuráveis; fotografias; medições químicas; estados de visita; faltas e reagendamentos; relatório automático; notificações; portal básico do cliente; e exportação/integrabilidade com faturação portuguesa.

O objetivo da primeira fase não é cobrir todos os casos. É permitir que uma empresa com três a quinze técnicos substitua WhatsApp, folhas de Excel e relatórios dispersos na operação diária.

### Fase 2 — Produtividade e qualidade

Depois deve acrescentar otimização de rotas, planeamento por zonas, tempos de deslocação, stock e consumíveis, orçamentação de reparações, assinatura/aprovação, indicadores por técnico, rentabilidade por contrato, avaliação de satisfação e regras de escalamento.

### Fase 3 — Telemetria e integrações

Só depois de conhecer as marcas reais instaladas pelos primeiros clientes deve implementar integrações prioritárias. Começaria por uma camada de ingestão de eventos e medições, não por controlo bidirecional. O produto deve aceitar API, webhook, CSV ou integração através de um gateway quando disponíveis, normalizando parâmetros como pH, ORP, cloro livre, temperatura, salinidade, caudal, nível e estado de equipamento.

A primeira integração deve ser escolhida por **número de clientes pilotos e facilidade técnica**, não pela notoriedade internacional da marca. Se os clientes usam maioritariamente Fluidra/AstralPool, comece aí; se o segmento premium usa Pentair ou ProMinent, a prioridade pode ser diferente.

### Fase 4 — Inteligência operacional

Com histórico suficiente, poderá criar risco de piscina, previsão de incumprimento de SLA, recomendação de frequência de visitas, previsão de consumo, detecção de sensores degradados, priorização de reparações e comparação de produtividade. Este é o momento adequado para IA e analítica, porque estarão baseadas em dados proprietários do workflow.

## 9. Modelo comercial a testar

Não fixaria ainda preços definitivos sem entrevistas e pilotos. Deve testar três lógicas: preço por empresa, preço por técnico e preço por piscina ativa. Para este setor, a combinação mais compreensível poderá ser uma base mensal por empresa mais um componente variável por técnico ou piscina, com portal do cliente e telemetria em módulos separados.

| Pacote experimental | Cliente-alvo | Conteúdo |
|---|---|---|
| **Essencial** | Profissional ou microequipa | Clientes, piscinas, agenda, visitas, relatórios e notificações |
| **Operações** | Empresas com várias equipas | Rotas, app offline, contratos, checklists, portal, stock e indicadores |
| **Profissional** | Empresas com carteira maior | SLA, permissões, auditoria, API, integrações, rentabilidade e suporte prioritário |
| **Telemetria** | Clientes com hardware compatível | Importação de medições, alertas, incidentes automáticos, histórico e regras de intervenção |

A telemetria deve ser cobrada como valor adicional apenas quando realmente reduzir visitas, acelerar diagnóstico ou melhorar o contrato de manutenção. Se for apenas um gráfico de pH sem ação operacional, será percepcionada como custo extra.

## 10. Validação comercial antes de desenvolver mais

Recomendo realizar entre 15 e 25 entrevistas com empresas de diferentes dimensões, seguidas de 3 a 5 pilotos pagos ou com preço simbólico. Não deve perguntar apenas “gostaria desta funcionalidade?”. Deve pedir para observar a última semana de operação e quantificar:

| Questão de validação | Métrica a obter |
|---|---|
| Quantas piscinas são mantidas e quantos técnicos existem? | Carteira média e escala operacional |
| Como são planeadas as visitas recorrentes? | Ferramentas atuais e tempo administrativo |
| Quantas visitas são falhadas ou reagendadas por mês? | Custo da desorganização |
| Quantas chamadas são sobre “quando vieram” ou “o que fizeram”? | Valor do portal e da prova de serviço |
| Quanto tempo demora a produzir e enviar relatórios? | Potencial de automação |
| Que dados são recolhidos em cada visita? | Requisitos de checklist e modelo de dados |
| Que marcas de controladores existem nas piscinas? | Prioridade real de telemetria |
| Quem decide a compra e qual é o orçamento? | Processo comercial e preço aceitável |
| Que sistema de faturação usam? | Necessidade de integração portuguesa |
| Aceitariam migrar dados e treinar técnicos? | Fricção de adoção |

O sinal mais importante não é elogio ao produto. É uma empresa aceitar colocar uma carteira real no sistema, pagar pelo piloto, usar a aplicação durante quatro semanas e permitir medir antes/depois. Se os clientes não completarem esse ciclo, o problema pode não ser suficientemente urgente ou a experiência de utilização ainda não será adequada.

## Recomendação final

**Continue a desenvolver o produto, mas reposicione o centro de gravidade.** O potencial é maior como plataforma vertical de operações e prova de serviço do que como CRM genérico. O seu foco imediato deve ser uma experiência móvel excelente para técnicos, contratos recorrentes, rotas e exceções, transparência para o cliente, relatórios e dados químicos estruturados.

**Inclua telemetria na arquitetura e no roadmap, não como dependência do MVP.** A telemetria deve transformar eventos em trabalho: alerta, prioridade, técnico, visita, resultado e comunicação. Não precisa de fabricar hardware no início e não deve ficar dependente de uma única marca.

A diferenciação mais defensável será: **conhecer profundamente o trabalho português de manutenção de piscinas, tornar cada visita auditável e ligar o estado técnico da piscina à execução da equipa**. Portugal deve ser usado como mercado de validação e referência; a sustentabilidade do negócio exigirá provavelmente expansão para Espanha e outros mercados europeus, adaptação linguística e integrações com faturação, pagamentos e fornecedores locais.

## Referências

[1]: https://apppiscinas.pt/sou-profissional "APPP — Sou profissional de piscinas"

[2]: https://www.getapp.pt/directory/1515/pool-service/software "GetApp Portugal — Software de manutenção de piscinas"

[3]: https://www.capterra.pt/directory/31416/pool-service/software "Capterra Portugal — Software de manutenção de piscinas"

[4]: https://innux.pt/software/software-de-gestao-de-piscinas-innuxsports/ "Innux — Software de Gestão de Piscinas InnuxSports"

[5]: https://www.astralpool.com/pt/pt/automacao---iot/fluidra-pool.html "AstralPool Portugal — Fluidra Pool"

[6]: https://www.pentairpooleurope.com/products/automation/intellipool "Pentair Pool Europe — IntelliPool"

[7]: https://www.prominent.com/en/Products/Products/Measuring-Control-and-Sensor-Technology/Controllers/p-dulcopool-pro.html "ProMinent — DULCOPOOL Pro"

[8]: https://www.innowater.com/noticias/tratamiento-agua/controla-optimiza-piscina-loxone/ "Innowater — Integração com Loxone"

[9]: https://www.blueriiot.com/eu-en/products/blue-connect-go "Blueriiot Europe — Blue Connect Go"

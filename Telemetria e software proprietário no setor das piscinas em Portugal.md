# Telemetria e software proprietário no setor das piscinas em Portugal

**Relatório de pesquisa — 15 de agosto de 2026**  
**Autor:** Manus AI

## Resumo executivo

O mercado português de manutenção e limpeza de piscinas não publica, de forma suficientemente transparente, dados sobre as marcas efetivamente instaladas pelos prestadores. Por isso, não é metodologicamente correto afirmar que uma empresa é “a mais usada” apenas porque vende em Portugal ou porque aparece em pesquisas na Internet. A análise abaixo separa três níveis: **presença comercial**, **adequação técnica para manutenção profissional** e **evidência pública de utilização por empresas portuguesas**.

A conclusão mais forte é que **Fluidra/AstralPool** é o ecossistema com maior probabilidade de presença no canal português, devido ao portefólio amplo, à operação Fluidra Portugal e à oferta local de AstralPool/Fluidra Pool e Fluidra Connect. A solução cobre automação, gateways, controlo remoto e integração com equipamento de piscina, mas a adoção por prestadores portugueses específicos não está publicamente quantificada [1] [2] [3].

Para instalações que exigem controlo profissional de qualidade da água, **Pentair IntelliPool** e **ProMinent DULCOPOOL Pro** são candidatos tecnicamente fortes. A Pentair declara explicitamente monitorização e manutenção remotas por profissionais; a ProMinent oferece controlo multiparâmetro, doseamento, calendário de manutenção, interface web, Wi‑Fi/LAN, Modbus e integração com PLC/Smart Home [4] [5]. Contudo, a pesquisa não encontrou evidência pública suficiente para classificá-las como líderes de adoção entre empresas portuguesas de limpeza e manutenção.

**Loxone + Innowater** é uma arquitetura de integração interessante, especialmente em moradias premium, hotéis, empreendimentos e projetos de automação. **Blueriiot Blue Connect** e **Ondilo ICO** são sobretudo analisadores conectados e aplicações de monitorização/recomendação; podem complementar o trabalho do técnico, mas não substituem necessariamente um controlador de doseamento nem constituem, por si só, uma plataforma de gestão de equipas. Para gestão operacional de visitas, rotas, medições e relatórios, há software especializado como **Anolla**, **FieldServicePro** e **Protocolo Piscinas**, mas a evidência de adoção em Portugal é ainda limitada; em particular, o Protocolo Piscinas é desenvolvido por uma empresa espanhola e tinha apenas mais de 100 downloads na ficha consultada [6] [7] [8].

## 1. Âmbito e critérios

Neste relatório, “telemetria” significa a recolha e transmissão remota de dados da piscina ou da sala técnica, normalmente por Wi‑Fi, LAN, gateway celular ou outro canal IoT, com visualização, alertas e, em alguns casos, atuação automática sobre bombas, válvulas e doseadores. Um simples registo manual de pH e cloro numa aplicação é **digitalização do serviço**, mas não é telemetria automática.

A relevância foi avaliada segundo cinco critérios: presença ou distribuição na Península Ibérica/Portugal; maturidade do hardware e do software proprietário; capacidade de medir parâmetros relevantes; capacidade de atuar sobre tratamento e equipamentos; e utilidade para uma empresa que gere várias piscinas e necessita de alertas, histórico, relatórios e manutenção preventiva.

| Nível de evidência | Interpretação |
|---|---|
| **Alta** | A empresa tem página/localização comercial portuguesa ou declaração explícita de uso profissional remoto, suportada por fonte oficial. |
| **Média** | A solução tem presença europeia ou portuguesa plausível e funções adequadas, mas não há prova pública de adoção por prestadores portugueses. |
| **Baixa** | A solução pode ser tecnicamente relevante, mas a presença local ou utilização em Portugal não foi confirmada. |

## 2. Mapa dos principais fornecedores

| Empresa / ecossistema | Hardware e software proprietário | Funções relevantes | Perfil de utilização | Presença/evidência em Portugal | Avaliação |
|---|---|---|---|---|---|
| **Fluidra / AstralPool** | Fluidra Pool, Fluidra Connect NN, gateways e armários Command & Connect | Monitorização de água, controlo remoto, automação de bombas, filtração, iluminação e tratamento conforme equipamento compatível | Residencial, profissionais, construção e manutenção; forte ecossistema de equipamentos | Site português da AstralPool, Fluidra Portugal e canal profissional Fluidra PRO [1] [2] [3] | **Mais provável líder de disponibilidade/canal**; adoção real não publicada |
| **Pentair** | IntelliPool, bombas IntelliFlo, IntelliChlor e acessórios compatíveis | Filtração, aquecimento, iluminação, doseamento de cloro, clorador salino, pH, ORP, diagnóstico e acesso remoto | Instalações residenciais premium e profissionais que trabalham com equipamentos Pentair | Presença europeia e documentação profissional; utilização portuguesa específica não confirmada [4] | **Alta adequação técnica; evidência local média** |
| **ProMinent** | DULCOPOOL/DULCOPOOL Pro, sensores DULCOTEST, bombas doseadoras, DULCOnneX | pH, ORP, cloro livre/total, bromo, ozono, temperatura, turbidez, condutividade; doseamento, calendário, web, Wi‑Fi/LAN, Modbus | Piscinas privadas exigentes, hotéis, resorts, piscinas públicas e instalações técnicas | Existe operação/site português da ProMinent e oferta orientada a tratamento de água; adoção específica por empresas de manutenção não confirmada [5] [9] | **Muito forte em qualidade de água e instalações profissionais** |
| **Loxone + Innowater** | Loxone Miniserver/App + cloradores e controladores Innowater | Monitorização em tempo real, alertas de pH, cloro e Redox, controlo integrado com automação predial | Casas inteligentes, hotéis, empreendimentos e integradores | Innowater possui site com versão portuguesa; integração oficial documentada, mas não foram encontrados casos portugueses públicos [10] | **Boa arquitetura de integração; depende do integrador** |
| **Blueriiot / Zodiac** | Blue Connect Go/Plus, sonda, app Blueriiot, Premium e plataforma para profissionais Virtual Pool Care | Temperatura, pH, ORP/Redox e, no Plus, condutividade/salinidade; histórico, alertas, recomendações e partilha com profissional | Monitorização residencial e apoio a técnicos; não é necessariamente doseamento automático | Oferta europeia e presença histórica de marcas Zodiac/Fluidra; Portugal específico não confirmado [11] | **Boa camada de monitorização; não é controlador completo** |
| **Ondilo** | ICO Pool, sondas conectadas, app e Water Index | Leituras horárias de temperatura, pH, ORP, TDS/sal; alertas, histórico, recomendações e partilha multiutilizador | Residencial premium e manutenção assistida por dados | Página oficial consultada é internacional/americana; não foi confirmada distribuição ou adoção portuguesa [12] | **Tecnologia interessante, evidência local baixa** |
| **Hayward** | OmniLogic, OmniPool/Omni automação e app | Controlo de bombas, aquecimento, iluminação, agendas e funções da piscina | Residencial e projetos com ecossistema Hayward | O fabricante mantém canal europeu Espanha/Portugal, mas a pesquisa não confirmou rede portuguesa ou utilização por prestadores [13] | **Relevante internacionalmente; presença portuguesa por confirmar** |
| **Protocolo Piscinas** | App móvel e plataforma de registo | Registo diário de pH, cloro e temperatura, relatórios, tarefas, incidentes e documentação | Conformidade, piscinas públicas/comunitárias e equipas que necessitam de prova de serviço | Desenvolvedor identificado como LA MINA DIGITAL SL, Espanha; ficha Google Play indicava mais de 100 downloads [6] | **Software de operação/conformidade, não telemetria física** |
| **Anolla** | Plataforma cloud de reservas e manutenção | Rotas, agenda, contratos, registo de qualidade da água, relatórios, controlo químico e integrações IoT declaradas | Empresas de serviços de piscinas e equipas de campo | Página em português, mas não foi encontrada prova de clientes portugueses ou integração local efetiva [7] | **Candidato SaaS; adoção portuguesa não demonstrada** |
| **FieldServicePro** | Software cloud de serviço de campo | Leads, orçamentos, despacho, agenda recorrente, rotas, faturação, formulários de pH/alcalinidade/cloro e prova de serviço | Empresas de limpeza/manutenção de piscinas | Página comercial em português; não foi confirmada base de clientes portuguesa [8] | **Gestão operacional, não telemetria nativa confirmada** |

## 3. Análise por camada tecnológica

### 3.1. Ecossistemas de fabricante: Fluidra e Pentair

A **Fluidra/AstralPool** oferece a proposta mais abrangente para quem quer comprar equipamento, automação e conectividade dentro de um único ecossistema. A página portuguesa de Automação & IoT apresenta controladores inteligentes, sistemas conectados e interfaces para monitorizar e ajustar automaticamente os equipamentos; a página Fluidra Pool refere monitorização da água em tempo real e acesso remoto através da aplicação [1] [2]. A página corporativa da Fluidra descreve também o Fluidra Connect como plataforma para controlo de elementos como filtração, tratamento de água, iluminação e outras funções de instalações aquáticas [3].

A vantagem comercial da Fluidra é a combinação entre fabricante, marcas, distribuição e canal profissional. A desvantagem é a **dependência do equipamento compatível e do ecossistema proprietário**: uma empresa de manutenção com piscinas heterogéneas pode ter dificuldade em centralizar tudo numa única interface. É essencial confirmar, por instalação, o modelo do controlador, a compatibilidade da bomba/doseador, o método de comunicação e se existe acesso multi-piscina para profissionais.

O **Pentair IntelliPool** é mais claramente descrito como ferramenta para profissionais: a página oficial afirma que profissionais de piscinas podem monitorizar e realizar manutenção remotamente. O sistema controla filtração, aquecimento, iluminação e tipos de sanitização, incluindo doseamento de cloro, cloração salina e bomba de pH, além de apresentar valores de ORP e pH e diagnósticos de bombas IntelliFlo [4]. A limitação é semelhante à da Fluidra: o valor completo surge quando a instalação é construída em torno de componentes Pentair compatíveis.

### 3.2. Controlo de processo: ProMinent

A **ProMinent DULCOPOOL Pro** distingue-se por ser uma solução de instrumentação e controlo de processo mais próxima de uma instalação profissional de tratamento de água do que de um simples produto “smart pool”. A documentação oficial lista pH, ORP, cloro livre e total, bromo, ozono, ácido cianúrico, turbidez, condutividade, caudal e temperatura. A solução suporta até cinco parâmetros em simultâneo, controla bombas doseadoras, regista dados, mantém um calendário de manutenção e permite acesso remoto, interface web, Wi‑Fi/LAN e Modbus RTU/TCP [5].

Para uma empresa de manutenção que atende hotéis, condomínios, piscinas públicas ou clientes com exigência elevada, esta arquitetura é potencialmente mais interessante do que um analisador residencial. O ponto fraco é custo, complexidade de instalação, calibração, responsabilidade técnica e necessidade de pessoal capaz de trabalhar com sondas, hidráulica de amostragem, doseamento e redes industriais.

### 3.3. Automação predial e integração: Loxone + Innowater

A **Loxone** funciona sobretudo como camada de automação e supervisão. A sua página de Smart Pool destaca controlo remoto, automação de bombas, aquecimento e iluminação, e integração com a restante casa. A Innowater documenta que os seus cloradores salinos podem ser ligados à plataforma Loxone; a aplicação disponibiliza monitorização em tempo real e alertas quando os níveis de cloro, pH ou Redox se afastam dos valores definidos [10] [14].

Esta abordagem é particularmente adequada quando a piscina faz parte de um sistema maior de gestão de energia, climatização, segurança, rega ou acesso. Não é, por si só, uma rede nacional de manutenção de piscinas: a qualidade da solução dependerá muito do integrador, da documentação da instalação e da capacidade de o prestador de manutenção receber alarmes e operar várias piscinas.

### 3.4. Analisadores conectados: Blueriiot e Ondilo

O **Blue Connect Go** realiza medição por Bluetooth através da app, enquanto o Blue Connect Plus acrescenta sonda de quatro parâmetros e conectividade/acessórios para medições automáticas e acesso à plataforma para profissionais. A documentação europeia identifica temperatura, pH, ORP/Redox e, no modelo Plus, condutividade; a assinatura Premium acrescenta histórico, alertas, multiutilizador e personalização avançada [11]. É uma solução prática para aumentar a frequência de medição e partilhar dados, mas não deve ser confundida com um sistema que doseia automaticamente produtos químicos.

O **Ondilo ICO** mede, segundo a sua página oficial, temperatura, pH, ORP e TDS/sal, fornece histórico, alertas, recomendações e partilha dos dados com um profissional. A marca posiciona-o como analisador conectado, instalado pelo utilizador, com medições horárias e recomendações baseadas em dados [12]. É útil como instrumento de monitorização residencial ou de apoio à visita técnica, mas a evidência portuguesa e a adequação a um centro profissional de operações são insuficientes para o colocar no mesmo nível de Fluidra Connect, IntelliPool ou DULCOPOOL Pro.

## 4. Software de gestão das empresas de manutenção

A pesquisa encontrou uma separação importante entre **telemetria da instalação** e **software de gestão do prestador**. O primeiro responde à pergunta “qual é o estado da piscina agora?”; o segundo responde a “que técnico vai a que cliente, quando, com que tarefas, que medições registou e que relatório/fatura foi emitido?”. Uma operação profissional precisa frequentemente dos dois.

O **Protocolo Piscinas** é um exemplo de software de registo e conformidade. A ficha da aplicação descreve registos de pH, cloro e temperatura, relatórios, estatísticas, tarefas pendentes, incidentes e documentação laboratorial. Contudo, a mesma ficha identifica o desenvolvedor como empresa espanhola e indicava mais de 100 downloads; por isso, não há base para o classificar como solução dominante em Portugal [6].

A **FieldServicePro** anuncia agenda, orçamentos, despacho, pagamentos, faturação, rotas e formulários digitais que obrigam o técnico a inserir pH, alcalinidade e cloro. Isto é valioso para prova de serviço e controlo operacional, mas a página consultada não comprova que os dados sejam recolhidos diretamente por sensores nem que exista integração efetiva com Fluidra, Pentair ou ProMinent [8].

A **Anolla** declara uma plataforma de reservas e manutenção com rotas, contratos, controlo químico, históricos, app móvel e um ecossistema IoT que pode ligar doseamento, bombas, filtração, iluminação e outros equipamentos. A proposta é interessante para uma empresa que queira construir um “sistema operativo” de manutenção, mas as alegações comerciais de desempenho e adoção não foram independentemente validadas e não foi encontrada evidência de clientes portugueses identificáveis [7].

## 5. O que é mais relevante para Portugal?

A resposta depende do segmento. Para uma empresa portuguesa que faz manutenção de muitas piscinas privadas e trabalha frequentemente com equipamentos AstralPool, a primeira hipótese a investigar é **Fluidra Pool/Connect**, não necessariamente porque exista prova pública de liderança estatística, mas porque há presença comercial local, amplitude de catálogo e uma proposta integrada. Para hotéis, piscinas públicas e instalações onde a qualidade da água é crítica, a shortlist técnica deve incluir **ProMinent DULCOPOOL Pro** e soluções profissionais equivalentes de Pentair ou Fluidra, com análise de custo total e assistência.

Para moradias de gama alta e projetos de automação, **Loxone + Innowater** pode oferecer diferenciação, sobretudo se o integrador já dominar Loxone. Para equipas que querem apenas acrescentar dados às visitas sem substituir doseadores, **Blue Connect Plus** ou **Ondilo ICO** podem ser complementos, desde que sejam verificadas conectividade, frequência real de medições, calibração, custo das sondas, partilha multiutilizador e disponibilidade de peças em Portugal.

| Necessidade do prestador português | Soluções a colocar na shortlist | Justificação |
|---|---|---|
| Centralizar equipamento de uma marca/ecossistema | Fluidra Pool/Connect; Pentair IntelliPool | Controlo remoto e automação de vários equipamentos compatíveis |
| Medir e dosear com rigor profissional | ProMinent DULCOPOOL Pro; Pentair IntelliPool; soluções Fluidra profissionais | Sondas, doseamento, alarmes, histórico e integração técnica |
| Integrar piscina com casa/hotel inteligente | Loxone + Innowater; ProMinent via Modbus | Automação transversal, controlo remoto e integração com PLC/Smart Home |
| Fazer visitas com mais prova e menos papel | Anolla; FieldServicePro; Protocolo Piscinas | Rotas, agenda, formulários, relatórios e histórico de cliente |
| Monitorizar piscinas privadas de forma simples | Blue Connect Plus; Ondilo ICO | Sensores conectados, app, alertas e recomendações |

## 6. Riscos e pontos a validar antes de comprar

O principal risco é confundir **monitorização** com **controlo automático**. Um sensor que mede pH e ORP pode alertar o técnico, mas não controla bombas doseadoras. Inversamente, um controlador pode dosear automaticamente, mas não oferecer uma boa plataforma para gerir 300 clientes e atribuir visitas. A decisão deve começar por um mapa de requisitos, não pela marca da sonda.

Também é importante verificar a conectividade nas salas técnicas. Wi‑Fi fraco, paredes espessas, distância entre casa e equipamento, ausência de LAN, dependência de 2G/3G ou necessidade de assinatura podem tornar uma solução teoricamente “cloud” pouco fiável. Deve ser pedido um teste de sinal, política de funcionamento offline, recuperação após falha de Internet, exportação de dados e suporte remoto.

A empresa de manutenção deve ainda negociar acesso profissional multi-piscina. Alguns produtos foram concebidos para o proprietário de uma única piscina e partilham dados apenas por convite; outros oferecem portal profissional, diagnóstico remoto e gestão de ativos. Esta diferença altera drasticamente o valor económico para um prestador.

| Pergunta de due diligence | Por que é decisiva |
|---|---|
| O sistema mede automaticamente ou exige leitura manual? | Determina se existe telemetria verdadeira. |
| Mede pH, ORP/cloro, temperatura, caudal, nível e salinidade? | Define a capacidade de diagnóstico e de prevenção. |
| Controla doseadores, bombas, válvulas e filtração? | Separa um analisador de um sistema de automação. |
| Existe portal profissional multi-piscina? | Essencial para empresas de manutenção. |
| Há API, Modbus, exportação CSV ou integração com software de visitas? | Evita isolamento do dado no ecossistema do fabricante. |
| Qual é a política de calibração, troca de sondas e garantia? | Impacta custo e fiabilidade operacional. |
| O fabricante tem assistência, stock e formação em Portugal? | Reduz tempo de indisponibilidade e dependência do instalador. |
| Como são tratados RGPD, utilizadores, logs e cibersegurança? | Protege dados dos clientes e controlo remoto da instalação. |

## 7. Conclusão e recomendação estratégica

A melhor leitura do mercado português, com a informação pública disponível, é a seguinte: **Fluidra/AstralPool parece ser o ecossistema com maior probabilidade de disponibilidade e penetração no canal**, enquanto **Pentair e ProMinent oferecem referências técnicas fortes para controlo remoto e tratamento profissional**. **Loxone + Innowater** é uma opção de integração com maior dependência do integrador. **Blue Connect e ICO** são camadas de análise e recomendação. **Anolla, FieldServicePro e Protocolo Piscinas** representam a camada de gestão digital da operação, mas não devem ser apresentados como telemetria física sem confirmação de integração.

Para validar a utilização real em Portugal, a abordagem mais eficaz seria entrevistar 15–25 empresas de manutenção distribuídas por Norte, Centro, Lisboa e Algarve, perguntando anonimamente por marca instalada, número de piscinas monitorizadas, tipo de conectividade, portal profissional, frequência de alarmes, custo mensal e dificuldade de assistência. A APPP é um canal natural para essa amostragem, uma vez que se apresenta como associação setorial e publica barómetros anuais, embora os dados detalhados de adoção tecnológica não estejam abertos na página consultada [15].

Uma oportunidade de mercado plausível está menos em criar outro sensor isolado e mais em oferecer uma **camada independente de operações para prestadores de manutenção**: agregação de dados de Fluidra, Pentair, ProMinent, Loxone e sensores complementares; alarmes priorizados; planeamento automático de rotas; ordens de trabalho; histórico químico; relatório ao cliente; gestão de consumíveis; e manutenção preventiva baseada em tendência. O ponto crítico seria garantir integrações documentadas e não depender de scraping ou de acessos não autorizados a plataformas proprietárias.

## Referências

[1]: https://www.astralpool.com/pt/pt/automacao---iot.html "AstralPool Portugal — Automação & IoT"

[2]: https://www.astralpool.com/pt/pt/automacao---iot/fluidra-pool.html "AstralPool Portugal — Fluidra Pool"

[3]: https://www.fluidra.com/commercial-solutions/technology-and-sustainability/fluidra-connect/ "Fluidra — Fluidra Connect"

[4]: https://www.pentairpooleurope.com/products/automation/intellipool "Pentair Pool Europe — IntelliPool"

[5]: https://www.prominent.com/en/Products/Products/Measuring-Control-and-Sensor-Technology/Controllers/p-dulcopool-pro.html "ProMinent — DULCOPOOL Pro"

[6]: https://play.google.com/store/apps/details?id=com.protocolo.piscinas&hl=pt "Google Play — Protocolo Piscinas"

[7]: https://www.anolla.com/pt/software-de-servicos-de-piscina "Anolla — Software de serviços de piscina"

[8]: https://fieldservicepro.io/pt/pool-service-management-software/ "FieldServicePro — Software de gestão de serviços de piscinas"

[9]: https://www.prominent.pt/pt/Produtos/Produtos/Sistemas-de-medicao-e-controlo-tecnologia-de-sensores/Controladores/pg-controllers.html "ProMinent Portugal — Controladores"

[10]: https://www.innowater.com/noticias/tratamiento-agua/controla-optimiza-piscina-loxone/ "Innowater — Integração com Loxone"

[11]: https://www.blueriiot.com/eu-en/products/blue-connect-go "Blueriiot Europe — Blue Connect Go"

[12]: https://us.ondilo.com/ico-pool/ "Ondilo — ICO Pool"

[13]: https://www.hayward.com/knowledge-base/how-to-navigate-the-hayward-omnilogic-app/ "Hayward — OmniLogic App"

[14]: https://www.loxone.com/int/products/pool/ "Loxone — Smart Pool Control"

[15]: https://apppiscinas.pt/barometro-setorial-da-piscina-em-portugal-2025 "Associação Portuguesa de Profissionais de Piscinas — Barómetro Setorial 2025"

## Resumo da análise
Eu estou a ficar com dores de cabeça e sem tempo. Vamos fechar aqui o que ficou entendido e os próximos passos. O foco do AquaOS vai ter de mudar. Neste momento, o foco está meio disperso com muitas features, mas sem o foco ser claro. Com Telemetria por piscina e alertas sobre os valores, mas não tendo a integração resolvida. Tendo a parte de CRM, mas sem trabalho concreto para ir de encontro à resolução dos problemas das empresas de manutenção de piscinas.

Com isto eu acho que o AquaOS se deve focar em ser o sistema operativo das empresas de manutenção de piscinas. Deve ser o sitio onde as empresas gerem os clientes, onde gerem a equipa e onde otimizam esta relação e o trabalho dos operadores.

---
### Features:
- CRM: registo e carteira de clientes. (feito)
    - Registo da informação do cliente.
- Cada cliente pode ter várias piscinas, mas todas no mesmo local. (feito)
    - Registo da informação por piscina: material, sensores, atuadores, etc. etc..
- Intervenções de manutenção por piscina. (feito - mas repensar o processo de intervenção, tal como quantas amostragens são feitas)
    - Registo da intervenção feita por piscina e não por cliente.
        - Ex.: Uma empresa que tenha um Hotel com 2 piscinas como cliente, numa visita terá de fazer a manutenção das 2 piscinas e o registo do trabalho feito e dos valores medidos para as 2. Se tivermos a telemetria a funcionar, vamos receber valores diferentes para cada uma.
    - Prova do serviço. O próprio registo é uma prova, mas também podemos ter um relatório da intervenção.
- Alertas operacionais/preditivos. (é preciso refactor - mudar alertas de telemetria para nova abordagem)
    - Avisos de intervenções em falta, não agendadas, piscinas a precisar de atenção, etc. etc..
- Gestão de equipa. (feito)
    - Contas por equipa/operador.
    - Gerir permissões.
    - Atribuição de responsabilidade.
- Agenda. (feito)
    - Agenda por equipa/operador.
    - Planeamento prévio das visitas.
    - Visibilidade do que vai ser feito e do que foi feito.
- Otimização de rotas. (por fazer - é preciso fazer um brainstorming da ideia)
    - Objetivo: auxiliar o planeamento das visitas. 
    - Como vejo a feature: Um mapa com a melhor rota dos clientes a visitar no dia selecionado.
    - Relação com outras features: Agenda. O roteamento vai influenciar a ordem dos clientes na Agenda.
- Portal do cliente. (por fazer - é preciso fazer brainstorming)
    - 
- Telemetria como módulo premium. (precisa refactor/por fazer)
    - Plataforma preparada para telemetria.
    - Ter uma opção de adicionar telemetria por piscina, para 'subscrições premium', para fornecedores específicos.
    - Registo e histórico de intervenções é diferente de Telemetria.

---
### A clarificar
> 1. A unidade do produto é o contrato de manutenção ligado a uma piscina, não o "contacto". (5.2) Isto é um insight de modelo de dados que muda a arquitetura: umcliente tem várias piscinas, cada piscina tem um contrato com frequência/SLA próprios.
> - O que quer dizer contrato com frequência/SLA próprios?
> - Para um cliente (Hotel) com várias piscinas, faz sentido/compensa para uma empresa de manutenção ter contratos distintos por piscina?

---
### Últimas notas
A aplicação que temos de momento é Web. Não será tão cedo uma aplicação mobile. Não é possível ser offline-first. É necessário que seja online. É necessário que haja ligação à internet.

Não vou arranjar um novo cliente-zero. Não tenho intenção de fazer entrevistas sem ter produto para vender. Primeiro passo, fazer as mudanças necessárias e terminar primeira versão do produto.

Com isto fecho a minha análise. Quero o teu feedback. Quero que tudo fique devidamente registado.
Scenario: Inserir uma meta já cadastrada
    Given que estou na página de "metas de aprendizados"
    And estou logado como professor
    And já existe uma meta cadastrada com o nome "Gerência de configuração"na turma "Engenharia de Software e Sistemas"
    When eu tenho "inserir" uma nova meta com "Gerência de configuração" na turma "Engenharia de Software e Sistemas"
    Then eu vejo um alerta indicando um "Erro" por já ter uma meta com o nome "Gerência de configuração" na turma "Engenharia de Software e Sistemas"

Scenario: Inserir uma meta não cadastrada
    Given que estou na página de "metas de aprendizados"
    And estou logado como professor 
    And não existe uma meta cadastrada com o nome "Gerência de configuração"na turma "Engenharia de Software e Sistemas"
    When eu tenho "inserir" uma nova meta com "Gerência de configuração" na turma "Engenharia de Software e Sistemas"
    Then eu vejo página de "metas de aprendizados" com a meta "Gerência de configuração" na turma "Engenharia de Software e Sistemas"

Scenario: Aviso de remover meta com avaliações
    Given Estou na página de metas
    And possui uma meta  ‘requisitos’
    And a meta ‘requisito’ já foi avaliada pelo professor e alunos
    When tento remover essa meta
    Then Aparece um aviso na tela “essa meta já foi avaliada, tem certeza que deseja excluir?”

Scenario: Aviso de remover meta com avaliações
    Given Estou na página de metas
    And possui uma meta  ‘requisitos’
    And a meta ‘requisito’ já foi avaliada pelo professor e alunos
    When tento remover essa meta
    Then Aparece um aviso na tela “essa meta já foi avaliada, tem certeza que deseja excluir?”

Scenario:  Aviso de remover única meta da turma
    Given Estou na página de metas
    And possui apenas a meta  ‘elicitação’
    When tento remover elicitação
    Then Aparece um aviso na tela “essa é a única meta da turma, tem certeza que deseja excluir?”


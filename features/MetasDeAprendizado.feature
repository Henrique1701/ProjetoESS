Scenario: Inserir uma meta já cadastrada
	Given que estou na página de "metas de aprendizados"
	And estou logado como professor
	And já existe uma meta cadastrada com o nome "Gerência de configuração"na turma "Engenharia de Software e Sistemas"
	When eu tenho "inserir" uma nova meta com "Gerência de configuração" na turma "Engenharia de Software e Sistemas"
	Then eu vejo um alerta indicando um "Erro" por já ter uma meta com o nome "Gerência de configuração" na turma "Engenharia de Software e Sistemas"

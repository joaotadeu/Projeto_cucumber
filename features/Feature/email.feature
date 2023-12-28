#language: pt

@validando_email
Funcionalidade: validando emails

Esquema do Cenario: Datatable com coluna

Dado que o nome e o email existem
Quando eu logo usando "<nome>" e "<email>" 
Então valido que o acesso foi realizado com sucesso

Exemplos:
    | nome  | email                     | 
    | Joao  | joaotadeu@gmail.com       |
    | Diana | dianadosanjos@outlook.com | 
    | Manu  | manudoprediozul@uol.com   |


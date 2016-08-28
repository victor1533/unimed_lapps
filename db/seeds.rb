# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
b1 = Beneficiario.create(nome: 'Jão', num_cartao: '123190872330008', rg: '1472055731', cpf: '12343254376')
b2 = Beneficiario.create(nome: 'Marco', num_cartao: '438767213010001', rg: '1472055729', cpf: '10123454108')
b3 = Beneficiario.create(nome: 'Pila', num_cartao: '1008765112800002', rg: '1472130730', cpf: '12332456710')
b4 = Beneficiario.create(nome: 'Bahia', num_cartao: '876566121010002', rg: '1372234120', cpf: '23314576890')
b5 = Beneficiario.create(nome: 'Chris', num_cartao: '902138383910007', rg: '9001929291', cpf: '00323456781')

Fatura.create(data_vencimento: '10/10/2010', data_emissao: Time.now, valor_total: 10.0, beneficiario: b1, pago:false)
Fatura.create(data_vencimento: '10/10/2010', data_emissao: Time.now, valor_total: 10.0, beneficiario: b1, pago:false)
Fatura.create(data_vencimento: '10/10/2010', data_emissao: Time.now, valor_total: 10.0, beneficiario: b1, pago:false)
Fatura.create(data_vencimento: '10/10/2010', data_emissao: Time.now, valor_total: 10.0, beneficiario: b1, pago:false)

a1 = Atividade.create(nome: 'Fisioterapia', descricao: 'Programa de Recuperacao pos-cirurgica', )
Aula.create(atividade: a1)
Programa.create(nome: 'Recuperacao Cirurgica', descricao: 'Realizacao de atividades de reabilitação', duracao: '12 semanas', publico_alvo: 'pessoa recem operada')

Medico.create(nome: 'Nelson', especialidade: 'Obstetra')

Questao.create(pergunta: 'Qual é meu plano?', resposta: 'É empresarial marcao')

Questao.create(pergunta: 'O que meu plao cobre?', resposta: 'Um monte de coisa, inclusive PT')

Questao.create(pergunta: 'Se eu perder meu cartao?', resposta: 'Não dá nada, é só pagar 7,20 que damos outro')

Questao.create(pergunta: 'Quem pode ser meu dedendente?', resposta: 'Pessoas que moram com voce')


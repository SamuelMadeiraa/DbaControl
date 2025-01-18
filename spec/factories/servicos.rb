# spec/factories/servicos.rb
FactoryBot.define do
  factory :servico do
    nome_cliente { Faker::Name.name }
    prazo_previsto { Faker::Date.forward(days: 30) }
    status { :pendente } # ou qualquer um dos valores válidos do enum
  end
end
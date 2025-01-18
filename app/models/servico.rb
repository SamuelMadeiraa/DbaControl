class Servico < ApplicationRecord

  validates :nome_cliente, :prazo_previsto, :data_inicio, :tipo_servico, :tipo_camera, :tipo_estrada, :estado, presence: true
end

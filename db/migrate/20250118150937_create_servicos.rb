class CreateServicos < ActiveRecord::Migration[8.0]
  def change
    create_table :servicos do |t|
      t.string :nome_cliente
      t.date :prazo_previsto
      t.date :data_inicio
      t.string :tipo_servico
      t.string :tipo_camera
      t.string :tipo_estrada
      t.string :estado

      t.timestamps
    end
  end
end

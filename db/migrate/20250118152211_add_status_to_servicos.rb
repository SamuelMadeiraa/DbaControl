class AddStatusToServicos < ActiveRecord::Migration[8.0]
  def change
    add_column :servicos, :status, :integer
  end
end

class CreateComandas < ActiveRecord::Migration[5.2]
  def change
    create_table :comandas do |t|
      t.string :nome_cliente

      t.timestamps
    end
  end
end

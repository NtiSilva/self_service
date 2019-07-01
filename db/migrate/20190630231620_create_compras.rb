class CreateCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :compras do |t|
      t.integer :cardapio
      t.references :mesa, foreign_key: true
      t.references :comanda, foreign_key: true

      t.timestamps
    end
  end
end

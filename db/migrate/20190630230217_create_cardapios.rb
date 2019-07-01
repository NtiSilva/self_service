class CreateCardapios < ActiveRecord::Migration[5.2]
  def change
    create_table :cardapios do |t|
      t.string :nome
      t.string :descricao
      t.string :adicionais
      t.string :categoria, :default => 'B'
      t.time :tempo_preparo, :default => '00:00:0000'
      t.float :preco
      t.string :foto
      t.references :restaurante, foreign_key: true

      t.timestamps
    end
  end
end

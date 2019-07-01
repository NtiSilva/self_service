class CreateMesas < ActiveRecord::Migration[5.2]
  def change
    create_table :mesas do |t|
      t.string :status, :default => false
      t.time :tempo_entrega, :default => '00:00:0000'
      t.references :restaurante, foreign_key: true

      t.timestamps
    end
  end
end

class CreateVoices < ActiveRecord::Migration[7.0]
  def change
    create_table :voices do |t|
      t.text :script
      t.boolean :accept, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateFeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :feeds do |t|
      t.text :content_positive
      t.text :content_negative
      t.integer :like, default: 0
      t.text :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

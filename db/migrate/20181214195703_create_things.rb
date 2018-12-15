class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :uri
      t.string :past_uris, array: true, default: []
      t.money :price
      t.timestamp :created_at
      t.integer :likes
      t.string :like_history, array: true, default: []
      t.integer :saves
      t.string :save_history, array: true, default: []
      t.timestamp :available_at
      t.boolean :is_event
      t.string :events, array: true, default: []
      t.decimal :discount
      t.boolean :is_available
      t.string :keywords, array: true, default: []
      t.string :slug
    end
  end
end

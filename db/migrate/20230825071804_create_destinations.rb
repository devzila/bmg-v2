class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :title, null: false
      t.string :slug, index: { unique: true }, null: false
      t.text :excerpt, null: false
      t.integer :card_type
      t.integer :comment_count, default: 0
      t.integer :like_count, default: 0
      t.integer :view_priority, default: 0
      t.boolean :menu_visibility, default: false
      t.boolean :active, default: true, index: true
      t.date :valid_till
      t.boolean :show_title_on_card, default: true

      t.timestamps
    end
  end
end

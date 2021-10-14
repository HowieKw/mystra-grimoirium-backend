class CreateGrimoires < ActiveRecord::Migration[6.1]
  def change
    create_table :grimoires do |t|
      t.string :title
      t.boolean :edit
      t.string :image
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

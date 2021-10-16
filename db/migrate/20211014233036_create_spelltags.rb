class CreateSpelltags < ActiveRecord::Migration[6.1]
  def change
    create_table :spelltags do |t|
      t.belongs_to :spell, null: false, foreign_key: true
      t.belongs_to :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end

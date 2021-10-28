class CreateClassSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :class_spells do |t|
      t.belongs_to :spell, null: false, foreign_key: true
      t.belongs_to :dnd_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end

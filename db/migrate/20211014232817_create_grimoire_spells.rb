class CreateGrimoireSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :grimoire_spells do |t|
      t.belongs_to :grimoire, null: false, foreign_key: true
      t.belongs_to :spell, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :level
      t.string :school
      t.string :components
      t.string :ritual
      t.string :casting_time
      t.string :concentration
      t.string :duration
      t.string :range_area
      t.string :attack_save
      t.string :damage_effect
      t.string :description
      t.string :ani

      t.timestamps
    end
  end
end

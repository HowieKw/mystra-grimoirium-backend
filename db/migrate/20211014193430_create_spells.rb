class CreateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :level
      t.string :higher_level
      t.string :school
      t.string :components
      t.string :material
      t.string :ritual
      t.string :casting_time
      t.string :concentration
      t.string :duration
      t.string :range
      t.string :class
      t.string :description
      t.string :ani

      t.timestamps
    end
  end
end

class CreateDndClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :dnd_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end

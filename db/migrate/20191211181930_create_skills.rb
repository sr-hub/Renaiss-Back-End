class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :units
      t.bigint :currentUnit
      t.bigint :maxUnit

      t.timestamps
    end
  end
end

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age
      t.string :field
      t.string :qualification

      t.timestamps
    end
  end
end

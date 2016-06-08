class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :year
      t.string :branch

      t.timestamps null: false
    end
  end
end

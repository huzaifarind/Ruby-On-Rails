class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end

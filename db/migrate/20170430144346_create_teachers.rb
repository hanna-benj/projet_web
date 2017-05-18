class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :surname
      t.string :name
      t.string :pasword
      t.string :email

      t.timestamps
    end
  end
end

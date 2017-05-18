class CreateStudients < ActiveRecord::Migration[5.0]
  def change
    create_table :studients do |t|
      t.string :surname
      t.string :name
      t.string :pasword
      t.string :email

      t.timestamps
    end
  end
end

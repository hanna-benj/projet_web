class CreateAdministrateurs < ActiveRecord::Migration[5.0]
  def change
    create_table :administrateurs do |t|
      t.string :nom
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

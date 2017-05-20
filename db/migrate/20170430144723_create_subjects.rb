class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.datetime :begin
      t.datetime :end
      t.belongs_to :teacher, index: true

      t.timestamps
    end
  end
end

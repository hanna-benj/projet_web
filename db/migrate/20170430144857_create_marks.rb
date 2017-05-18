class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.float :mark

      t.timestamps
    end
    add_reference :marks, :exams, foreign_key: true
  end
end

class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :title
      t.datetime :date

      t.timestamps
    end
    add_reference :exams, :subjects, foreign_key: true
  end
end

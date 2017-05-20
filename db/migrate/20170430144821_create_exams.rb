class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :title
      t.datetime :date
      t.belongs_to :subject, index: true

      t.timestamps
    end
  end
end

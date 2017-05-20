class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.float :mark
      t.belongs_to :exam, index: true
      t.belongs_to :studient, index: true
      t.belongs_to :teacher, index: true

      t.timestamps
    end
  end
end

class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :instruction
      t.string :text
      t.string :options

      t.timestamps
    end
  end
end

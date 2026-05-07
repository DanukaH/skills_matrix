class CreateSkills < ActiveRecord::Migration[8.1]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.string :level
      t.integer :years_of_experience

      t.timestamps
    end
  end
end

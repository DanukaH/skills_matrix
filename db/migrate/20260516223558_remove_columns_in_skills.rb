class RemoveColumnsInSkills < ActiveRecord::Migration[8.1]
  def change
    remove_column :skills, :level, :string
    remove_column :skills, :years_of_experience, :integer
  end
end

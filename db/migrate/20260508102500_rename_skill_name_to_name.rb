class RenameSkillNameToName < ActiveRecord::Migration[8.1]
  def change
    rename_column :skills, :skill_name, :name
  end
end

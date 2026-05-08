class AddDescriptionToSkills < ActiveRecord::Migration[8.1]
  def change
    add_column :skills, :description, :text
  end
end

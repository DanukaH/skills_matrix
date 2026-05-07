require 'rails_helper'

RSpec.describe "skills/index", type: :view do
  before(:each) do
    assign(:skills, [
      Skill.create!(
        skill_name: "Skill Name",
        level: "Level",
        years_of_experience: 2
      ),
      Skill.create!(
        skill_name: "Skill Name",
        level: "Level",
        years_of_experience: 2
      )
    ])
  end

  it "renders a list of skills" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Skill Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Level".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end

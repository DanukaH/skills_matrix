require 'rails_helper'

RSpec.describe "skills/new", type: :view do
  before(:each) do
    assign(:skill, Skill.new(
      skill_name: "MyString",
      level: "MyString",
      years_of_experience: 1
    ))
  end

  it "renders new skill form" do
    render

    assert_select "form[action=?][method=?]", skills_path, "post" do

      assert_select "input[name=?]", "skill[skill_name]"

      assert_select "input[name=?]", "skill[level]"

      assert_select "input[name=?]", "skill[years_of_experience]"
    end
  end
end

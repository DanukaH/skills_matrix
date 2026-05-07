require 'rails_helper'

RSpec.describe "skills/edit", type: :view do
  let(:skill) {
    Skill.create!(
      skill_name: "MyString",
      level: "MyString",
      years_of_experience: 1
    )
  }

  before(:each) do
    assign(:skill, skill)
  end

  it "renders the edit skill form" do
    render

    assert_select "form[action=?][method=?]", skill_path(skill), "post" do

      assert_select "input[name=?]", "skill[skill_name]"

      assert_select "input[name=?]", "skill[level]"

      assert_select "input[name=?]", "skill[years_of_experience]"
    end
  end
end

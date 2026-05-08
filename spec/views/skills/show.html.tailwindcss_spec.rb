require 'rails_helper'

RSpec.describe "skills/show", type: :view do
  before(:each) do
    assign(:skill, Skill.create!(
      name: "Skill Name",
      level: "Level",
      years_of_experience: 2,
      description: "description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Skill Name/)
    expect(rendered).to match(/Level/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/description/)
  end
end

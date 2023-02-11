require_relative '../lib/my_study_gem_plan'
RSpec.describe MyStudyGemPlan do
  it "has a version number" do
    expect(MyStudyGemPlan::VERSION).not_to be nil
  end
end

require "spec_helper"

RSpec.describe DailyProperties do
  it "has a version number" do
    expect(DailyProperties::VERSION).not_to be nil
  end

end

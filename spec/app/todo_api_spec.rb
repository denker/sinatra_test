require "spec_helper"

RSpec.describe TodoApi do
  def app
    TodoApi # this defines the active application for this test
  end
end

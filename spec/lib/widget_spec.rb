require 'spec_helper'
require 'widget'

describe Widget do
  it "has a version" do
    expect{Widget::VERSION}.not_to raise_error
  end
end

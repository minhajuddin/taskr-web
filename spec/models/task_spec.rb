require 'spec_helper'

describe Task do
  it { should be_embedded_in(:project).as_inverse_of(:tasks)}
end

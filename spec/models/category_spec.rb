require 'spec_helper'

describe Category do

  it { should_not have_valid(:name).when(nil) }

  it { should have_many :issues }


end

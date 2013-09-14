require 'spec_helper'

describe Issue do

  it { should_not have_valid(:description).when(nil, '') }

  it { should_not have_valid(:description).when(nil, '') }

  it { should_not have_valid(:severity).when(nil, '') }

  it { should belong_to :category }

  describe '.severities' do
    it 'includes Low' do
      expect(Issue.severities).to include('Low')
    end

    it 'includes Moderate' do
      expect(Issue.severities).to include('Moderate')
    end

    it 'includes High' do
      expect(Issue.severities).to include('High')
    end
  end

end

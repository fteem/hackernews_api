require 'spec_helper'

describe HackernewsApi::User do
  let(:user) do
    VCR.use_cassette('user') do
      described_class.fetch('fteem')
    end
  end

  it '#id' do
    expect(user.id).to eq "fteem"
  end

  it '#about' do
    expect(user.about).to eq nil
  end

  it '#created' do
    expect(user.created.to_s).to eq ''
  end

  it '#delay' do
    expect(user.delay).to eq 0
  end

  it '#karma' do
    expect(user.karma).to eq 69
  end

  it '#submitted' do
    expect(user.submitted).to eq [7108294, 6521410, 6465841, 6463575, 5256248, 5188029, 5181227]
  end
end

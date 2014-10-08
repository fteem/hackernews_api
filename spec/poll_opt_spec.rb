require 'spec_helper'

describe HackernewsApi::PollOpt do
  let(:poll_part) do
    VCR.use_cassette('poll_part') do
      described_class.fetch 160705
    end
  end

  it '#id' do
    expect(poll_part.id).to eq 160705
  end

  it '#by' do
    expect(poll_part.by).to eq "pg"
  end

  it '#parent' do
    expect(poll_part.parent).to eq 160704
  end

  it '#text' do
    expect(poll_part.text).to eq "Yes, ban them; I'm tired of seeing Valleywag stories on News.YC."
  end

  it '#time' do
    expect(poll_part.time.to_s).to eq "2008-04-11T04:02:56+00:00"
  end

  it '#type' do
    expect(poll_part.type).to eq "pollopt"
  end
end

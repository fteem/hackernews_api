require 'spec_helper'

describe HackernewsApi::Poll do
  let(:poll) do
    VCR.use_cassette('poll') do
      described_class.fetch 126809
    end
  end

  it '#id' do
    expect(poll.id).to eq 126809
  end

  it '#by' do
    expect(poll.by).to eq "pg"
  end

  it '#kids' do
    expect(poll.kids).to include 126824
  end

  it '#score' do
    expect(poll.score).to eq 46
  end

  it '#text' do
    expect(poll.text).to eq ""
  end

  it '#time' do
    expect(poll.time.to_s).to eq "2008-03-01T20:34:12+00:00"
  end

  it '#type' do
    expect(poll.type).to eq "poll"
  end

  it "#title" do
    expect(poll.title).to eq "Poll: What would happen if News.YC had explicit support for polls?"
  end
end

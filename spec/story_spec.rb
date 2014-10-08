require 'spec_helper'

describe HackernewsApi::Story do
  let(:story) do
    VCR.use_cassette('story') do
      described_class.fetch 8863
    end
  end

  it '#id' do
    expect(story.id).to eq 8863
  end

  it '#by' do
    expect(story.by).to eq "dhouston"
  end

  it '#kids' do
    expect(story.kids).to include 8952
  end

  it '#score' do
    expect(story.score).to eq 111
  end

  it '#time' do
    expect(story.time.to_s).to eq "2007-04-04T19:16:40+00:00"
  end

  it '#title' do
    expect(story.title).to eq "My YC app: Dropbox - Throw away your USB drive"
  end

  it '#type' do
    expect(story.type).to eq "story"
  end

  it '#url' do
    expect(story.url).to eq "http://www.getdropbox.com/u/2/screencast.html"
  end
end

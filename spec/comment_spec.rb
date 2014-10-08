require 'spec_helper'

describe HackernewsApi::Comment do
  let(:comment) do
    VCR.use_cassette('comment') do
      described_class.fetch 2921983
    end
  end

  it '#id' do
    expect(comment.id).to eq 2921983
  end

  it '#by' do
    expect(comment.by).to eq "norvig"
  end

  it '#kids' do
    expect(comment.kids).to include 2922709
  end

  it '#parent' do
    expect(comment.parent).to eq 2921506
  end

  it '#text' do
    expect(comment.text).to eq "Aw shucks, guys ... you make me blush with your compliments.<p>Tell you what, Ill make a deal: I'll keep writing if you keep reading. K?"
  end

  it '#time' do
    expect(comment.time.to_s).to eq "2011-08-24T18:38:47+00:00"
  end
  it '#type' do
    expect(comment.type).to eq "comment"
  end
end

require 'spec_helper'

describe Splash do
  describe '#vimeo_id=' do
    it 'sets the #video_url' do
      splash = Splash.new(vimeo_id: 1234)

      expect(splash.video_url).to eq '//player.vimeo.com/video/1234?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff'
    end

    context 'when the video_url is set' do
      it "doesn't override the #video_url" do
        splash = Splash.new(video_url: 'http://thing.com')

        splash.vimeo_id = 1234

        expect(splash.video_url).to eq 'http://thing.com'
      end
    end
  end

  describe '#vimeo_id' do
    it 'comes from the #video_url' do
      splash = Splash.new(video_url: '//player.vimeo.com/video/1234?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff')

      expect(splash.vimeo_id).to eq '1234'
    end

    context 'when there is no #video_url' do
      it 'returns nil' do
        splash = Splash.new

        expect(splash.vimeo_id).to be_nil
      end
    end
  end
end

# frozen_string_literal: true

require "spec_helper"
require "song"

RSpec.describe Song do
  let(:verses) {
    lyrics = File.read("spec/fixtures/song.txt").strip
    verses = lyrics.split("\n\n")
  }

  describe ".lyrics" do
    # Find the full lyrics in spec/fixtures/song.txt
    it "returns the full lyrics of the 99-bottles of beer song" do
      generated_lyrics = Song.lyrics

      expect(generated_lyrics.size).to eq(verses.size)
      expect(Song.lyrics).to eq(verses)
    end
  end

  describe ".verses" do
    it "returns the first five verses"
    it "returns the second to last verse"
    it "returns the last verse"
  end
end

# frozen_string_literal: true

require "spec_helper"
require "song"

RSpec.describe Song do
  describe ".verse" do
    it "returns the verse for 95 beers" do
      expected_verse = <<~VERSE
        95 bottles of beer on the wall, 95 bottles of beer.
        take one down and pass it around, 94 bottles of beer on the wall.
      VERSE

      expect(Song.verse(number_of_beers: 95)).to eq(expected_verse)
    end

    it "returns the last verse"

    it "returns the second to last verse"

    it "returns the third to last verse"
  end

  describe ".lyrics" do
    # Find the full lyrics in spec/fixtures/song.txt
    xit "returns all the versers of the 99-bottles of beer song" do
      verses = File.read("spec/fixtures/song.txt").strip.split("\n\n")
      generated_lyrics = Song.lyrics

      expect(generated_lyrics.size).to eq(verses.size)
      expect(Song.lyrics).to eq(verses)
    end
  end
end

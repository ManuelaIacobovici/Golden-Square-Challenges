require "list_of_tracks"

RSpec.describe ListOfTracks do
	context "given no tracks" do
		it "has an empty list" do
			list_of_tracks = ListOfTracks.new
      expect(list_of_tracks.list).to eq []
		end
	end

	context "given one track" do
		it "has one track in the list" do
			list_of_tracks = ListOfTracks.new
			list_of_tracks.add("Halo")
      expect(list_of_tracks.list).to eq ["Halo"]
		end
	end

	context "given two tracks" do
		it "has two tracks in the list" do
			list_of_tracks = ListOfTracks.new
			list_of_tracks.add("Halo")
			list_of_tracks.add("Bad")
      expect(list_of_tracks.list).to eq ["Halo", "Bad"]
		end
	end

	context "given a duplicate track" do
		it "keeps only one time the song in the list" do
			list_of_tracks = ListOfTracks.new
			list_of_tracks.add("Halo")
			list_of_tracks.add("Halo")
      expect(list_of_tracks.list).to eq ["Halo"]
		end
	end
	
	context "given some errors" do
		it "it is not a song" do
			list_of_tracks = ListOfTracks.new
      expect { list_of_tracks.add("") }.to raise_error "Not a song."
		end

		it "fails" do
			list_of_tracks = ListOfTracks.new
      expect { list_of_tracks.add(12) }.to raise_error "Not a song."
		end
	end
end
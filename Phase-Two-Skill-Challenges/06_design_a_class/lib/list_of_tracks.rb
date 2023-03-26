class ListOfTracks
	def initialize
		@tracks = []
	end

	def add(track)
		if !track.is_a?(String) || track.empty?
			fail "Not a song."
			return
		end
		@tracks << track unless @tracks.include? track
	end

	def list
		return @tracks
	end
end
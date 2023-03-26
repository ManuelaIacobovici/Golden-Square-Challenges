Track Class Design Recipe

1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.

'''ruby
class ListOfTracks
  def initialize
	end

	def add(track) # track is a string representing a song.
	@ Return nothing
	end

	def list
	@ Returns a list of tracks I've listened.
	end
'''

3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# 1
list_of_tracks = ListOfTracks.new
list_of_tracks.list # => []

# 2
list_of_tracks = ListOfTracks.new
list_of_tracks.add("Halo")
list_of_tracks.list # => ["Halo"]

# 3
list_of_tracks = ListOfTracks.new
list_of_tracks.add("Halo")
list_of_tracks.add("Bad")
list_of_tracks.list # => ["Halo", "Bad"]

# 4
list_of_tracks = ListOfTracks.new
list_of_tracks.add("Halo")
list_of_tracks.add("Halo")
list_of_tracks.list # => ["Halo"]

# 5
list_of_tracks = ListOfTracks.new
list_of_tracks.add("") # fails "Not a song"

# 6
list_of_tracks = ListOfTracks.new
list_of_tracks.add(12) # fails "Not a song"

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
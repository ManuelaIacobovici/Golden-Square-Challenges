Reading Time Method Design Recipe

1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

'''ruby
reading_time = calculate_reading_time(text)

# * text is a string with words in it
# * reading_time is a integer representing minutes
'''

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

'''ruby
# 1
calculate_reading_time("")
# => 0

# 2
calculate_reading_time("one")
# => 1

# 3
calculate_reading_time(TWO_HUNDRED_WORDS)
# => 1

# 4
calculate_reading_time(THREE_HUNDRED_WORDS)
# => 2

# 5
calculate_reading_time(FOUR_HUNDRED_WORDS)
# => 2

# 6
calculate_reading_time(FIVE_HHOUSAND_WORDS)
# => 25
'''

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

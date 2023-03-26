Grammar Method Design Recipe

1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.
'''ruby
is_correct = check_grammar(text)

# * text is a string with words in it
# * is_correct is a boolean depending on whether it checks out
'''

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

'''ruby
# 1
check_grammar("")
# fail "Not a sentence."

# 2
check_grammar("Hello, this is Ruby.")
# => true

# 3
check_grammar("Hello, this is Ruby")
# => false

# 4
check_grammar("hello, this is Ruby.")
# => false


# 5
check_grammar("hello, this is Ruby")
# => false

# 6
check_grammar("HELLO, this is Ruby.")
# => true

# 7
check_grammar("Hello, this is Ruby!")
# => true

# 8
check_grammar("Hello, this is Ruby?")
# => true

# 9
check_grammar("Hello, this is Ruby,")
# => false
'''

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
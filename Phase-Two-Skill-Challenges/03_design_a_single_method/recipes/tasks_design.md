Tasks Method Design Recip

1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

'''ruby
is_correct = track_my_tasks(text)

# * text is a string with #TODO words in it
# * is_correct is a boolean depending on wherther it checks out.
'''
3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# 1
track_my_tasks("")
# fails "Not a task."

# 2
track_my_tasks(1234)
# fails "Not a string."

# 3
track_my_tasks("#to_do")
# => false

# 4
track_my_tasks("#To Do")
# => false

# 5
track_my_tasks("#to do")
# => false

# 6
track_my_tasks("TODO")
# => false

# 7
track_my_tasks("#TODO?")
# => true

# 8
track_my_tasks("#TODO")
# => true

Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
def track_my_tasks(text)
    fail "Not a string." unless text.is_a? String
    fail "Not a task." if text.empty?
    /#TODO/.match(text) ? true : false   
end   
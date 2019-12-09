# Q0: Why are these two errors being thrown?
The first error is being thrown because we need to update our schema. The second error is being thrown because we haven't actually created our Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Upon loading the PokePortal, we are routed to home#index. The index method in the home controller then creates a variable called "trainerless_pokemon" which holds the pokemon from the DB that DON'T HAVE A TRAINER. We then take a random sample from these pokemon and choose to display it!

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This line displays a button that says "Throw a Pokeball". On click, we send a PATCH request to the CAPTURE_PATH with the current pokemon ID parameter. This calls pokemon#capture, which after running, redirects to the root.

# Question 3: What would you name your own Pokemon?
Yoinkasaurus.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
We passed a path into the redirect_to. It needed a trainer_id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
N/A

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

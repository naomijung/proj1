# Q0: Why is this error being thrown?
The Pokemon model does not yet exist, and thus Pokemon is an uninitialized constant.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
All the possible Pokemon that are appearing are those created in the seed file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
When the button is clicked, it makes a patch request to the URI pattern "capture", which calls PokemonController's capture function.

# Question 3: What would you name your own Pokemon?
Jigglypuff!

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the path to "trainers/" and concatenated that with the current trainer's ID to get the correct path for the current trainer view that the user is on.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The pokemon that is being created with the new keyword causes an error due to the validations included in the Pokemon model. As a result, that pokemon has errors associated with it, and the error messages will be flashed on the form.

# Give us feedback on the project and decal below!
Everything has been pretty good so far! I think the project and the homeworks were manageable in terms of time requirement and difficulty. 

# Extra credit: Link your Heroku deployed app

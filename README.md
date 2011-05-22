# What?!

A Naive Bayes model built for That's What She Said classification.

	require 'rubygems'
	require 'twss-classifier'		
	
	if TWSSClassifier.is_twss?("that was longer than i expected")
		puts "That's what she said!"
	end
	
	if TWSSClassifier.is_twss?("oh, this is good", 0.9) # Use a lower threshold of 0.9.
		puts "That's what she said!"
	end	
	
Read more about the algorithm [here](http://blog.echen.me/2011/05/05/twss-building-a-thats-what-she-said-classifier/), and see a demo [here](http://twss-classifier.heroku.com/).
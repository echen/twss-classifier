# What?!

A Naive Bayes model built for That's What She Said classification.

	nb = NaiveBayes.new(1, POS_TRAINING_EXAMPLES, NEG_TRAINING_EXAMPLES) # train a unigram model
	if nb.classify("that was longer than i expected") > 0.99
		puts "That's what she said!"
	end
	
Read more about the algorithm [here](http://blog.echen.me/2011/05/05/twss-building-a-thats-what-she-said-classifier/), and see a demo [here](http://twss-classifier.heroku.com/).
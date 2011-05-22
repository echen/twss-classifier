require File.expand_path('../lib/twss-classifier/naive-bayes', __FILE__)

ALL_POS_EXAMPLES = IO.readlines("data/twss-stories-parsed.txt")
ALL_NEG_EXAMPLES_FMYLIFE = IO.readlines("data/fmylife-parsed.txt")
ALL_NEG_EXAMPLES_TFLN = IO.readlines("data/texts-from-last-night-parsed.txt")

POS_TRAINING_EXAMPLES = ALL_POS_EXAMPLES.first(1000)
NEG_TRAINING_EXAMPLES = ALL_NEG_EXAMPLES_FMYLIFE.first(500) + ALL_NEG_EXAMPLES_TFLN.first(500)

POS_TEST_EXAMPLES = ALL_POS_EXAMPLES.last(1000)
NEG_TEST_EXAMPLES = ALL_NEG_EXAMPLES_FMYLIFE.last(500) + ALL_NEG_EXAMPLES_TFLN.last(500)

nb = NaiveBayes.new(1, POS_TRAINING_EXAMPLES, NEG_TRAINING_EXAMPLES)
nb.train
nb.yamlize("twss-classifier.yaml")
exit

false_positives = 0
total_count = 0
File.readlines("data/guetnberg-fairy-tales/twss.txt").select{ |x| !x.strip.empty? }.map(&:strip).each do |line|
  if nb.classify(line) > 0.99
    puts "* #{line}"
    false_positives += 1 
  end
  total_count += 1
end
puts false_positives
puts total_count
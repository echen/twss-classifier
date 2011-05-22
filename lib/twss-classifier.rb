require 'yaml'
require File.expand_path('../twss-classifier/naive-bayes', __FILE__)

module TWSSClassifier
  
  class << self
    def is_twss?(line, threshold = 0.9)
      classifier.classify(line) > threshold
    end

    def classifier
      @classifier ||= YAML::load(File.read(File.expand_path('../twss-classifier/twss-classifier.yaml', __FILE__)))
    end
  end
  
end
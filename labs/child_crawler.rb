require 'httparty'
require 'pry'

class Crawler
  attr_accessor :url, :body, :words, :histogram
  # url - the link/site body- string words- array of the body histogram- 

  def initialize(url) #pass in the url...cnn
    @url = url #saving the url in n instance variable 
    #this is how you create a default value for a hash
    @histogram = Hash.new(0) #taking histogram and creating a hash but setting default values at 0. we're going to be couting words so default should be zero

    parse #parse is a method (def below)

    #this is how you sort a hash!!!!
    words.each{|w| @histogram[w.downcase] +=1 } #creating the histogram "for each word..grab each word one at a time- take the histogram and make all the words lowercase. +=1 means add words/couting for all the words that are the same. so we'll have all the words and all the counts"
    @histogram = @histogram.sort_by {|key, value| value}.reverse #take the histogram and sort it by value. does this in ascending order. .reverse puts it in descending order
  end

  def parse #parse says go to httparty and get all the text from the url
    @body = HTTParty.get(@url)
    @words = @body.split #takes the entire string of the body and splits it into an array
  end

  def word_count #
    @words.count
  end

  def count_by_name(name) #out of all the words select only if {...} is true
    words.select{|w| w.downcase == name}.count #select takes an input and gives a smaller output depending on if whats in the {} is true. after doing this, it counts it. 
  end

  def obama #crawler1.obama
    count_by_name('obama')
  end

  def romney
    count_by_name('romney')
  end
end
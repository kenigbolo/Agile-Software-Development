# require 'pry'
class HangpersonGame

  # add the necessary class methods, attributes, etc. here
  # to make the tests in spec/hangperson_game_spec.rb pass.

  # Get a word from remote "random word" service

  # def initialize()
  # end
  attr_accessor :word, :guesses, :wrong_guesses, :valid
  def initialize(word)
    @word = word
    @guesses = ''
    @wrong_guesses = ''
    @valid
  end

  def self.get_random_word
    require 'uri'
    require 'net/http'
    uri = URI('http://watchout4snakes.com/wo4snakes/Random/RandomWord')
    Net::HTTP.post_form(uri ,{}).body
  end
  
  def guess (letter)
    # raise Argumenterror
    raise ArgumentError if letter.nil? || letter.empty? || letter=~/[^A-Za-z]/
   
    letter = letter.downcase
    if (@guesses.include?(letter)) || (@wrong_guesses.include?(letter)) #Check if guesses or wrong-guesses includes the given letter
      false                         #return false if it does
    else                            #If it doesn't include the given letter execute the following block
      if @word.include? letter      #If letter matches any single string in word
        @guesses << letter        #add letter to guesses
      else                          #If it doesn't include then we put it in wrong guesses
        @wrong_guesses << letter
      end
    end
  end
  
  def word_with_guesses
    
    if guesses.empty?
      "-"*@word.size
    else
      @word.gsub(/[^#{@guesses}]/, "-")
    end
  end
    
 def check_win_or_lose
   if @wrong_guesses.length == 7
     @valid = :lose
     :lose
    elsif @word == self.word_with_guesses
      @valid = :win
      :win
    else
      @valid = :play
      :play
   end
 end
  
end



# game = HangpersonGame.new('foobar')
# game.guess(nil)
# binding.pry
# game.guess(nil)



def dictionary
 dictionary = {
      "four" => "4",
  "for" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&",
   "too" => "2",
   "to" => "2",
   "two" =>"2"
 }
   end
   def word_substituter(tweet)
   tweet.split.map do |word|
       if dictionary.keys.include?(word.downcase)
             word = dictionary[word.downcase]
        else
             word
        end
     end.join(" ")
 end
  def bulk_tweet_shortener(tweets)
   tweets.each do |short_tweet| 
       puts word_substituter(short_tweet)
  end
  end
  def selective_tweet_shortener(tweet)
     if tweet.length > 140
         word_substituter(tweet)
    else
         tweet
     end
 end
 
def shortened_tweet_truncator(tweet)
   if word_substituter(tweet).length > 140
     word_substituter(tweet)[0..136] + '...'
   else
     tweet
   end
 end 
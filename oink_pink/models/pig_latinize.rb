class Latinize

  def self.pig word
    if 
      word.start_with?('a','e','i','o','u')
      word.concat "ay"
    else 
      word[1..word.length].concat word[0].concat "ay"
    end 
  end 

end
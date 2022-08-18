require 'pry'


#We are monkey patching - altering the ruby inbuilt class String to include a custom inbuilt instance method.
class String

  def sentence?
    if self.end_with? '.'
      true
    else
      false
    end
  end

  def question?
    self.end_with? "?"
  end

  def exclamation?
    self.end_with? "!"
  end

  def count_sentences
   #Split the given method to an array on .!?
   #Reject out any empty strings that may be included
   #count the number of elements n th resultant array

    self.split(/[.!?]+/).reject(&:empty?).count #Means you are dividing this into individual sentences at the specified symbols
  end
end


pp "This is not home?It is where I desire to be at.".count_sentences
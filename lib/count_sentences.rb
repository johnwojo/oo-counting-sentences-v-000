require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    words = []
    self.split("." && "!" && "?")
    self.each do |word|
      if word ==! " "
        words << word
        words.count
      end
    end
  end
end

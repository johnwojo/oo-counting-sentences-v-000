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
    self.split("." && "!" && "?").each do |word|
          words << word
    end
        words.count
        binding.pry
  end
end

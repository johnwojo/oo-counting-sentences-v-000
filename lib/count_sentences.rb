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
    if self.include?("?" || "!")
      self_with_question = self.split("?").count
      self_with_exclamation = self.split("!").count
      self_with_period = self.split(".").count
      self_with_question + self_with_exclamation + self_with_period
    else
      self.split(".").count
    end
  end
end

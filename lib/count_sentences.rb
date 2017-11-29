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
    if self.include?("?")
      yogurt = self.split("?").count
      cat = self.split(".").count
      yogurt + cat

    elsif self.include?("!")
        yogurt = self.split("!").count
        cat = self.split(".").count
        yogurt + cat

    else
      self.split(".").count
    end
  end
end

require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if self.split(/[.*?*!*]/).count == 0
      return 0
    else 
      split_array = self.split(/[.*?*!*]/)
      split_array.delete_if{|x| x == ""}
      return split_array.count
    end
  end
end
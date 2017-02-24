class Annkissam
  attr_reader :permutations

  DICTIONARY = {
    nouns: ["abcd", "c", "def", "h", "ij", "cde"],
    verbs: ["bc", "fg", "g", "hij", "bcd"],
    articles: ["a", "ac", "e"]
  }

  def initialize(input)
    @input = input
    @permutations = []
  end

  def validate
    self.permutation_creator
    valid_sentences = []
    @permutations.each do |permutation|

      tokens = permutation.split(' ')
      combos = { verbs: 0, nouns: 0, articles: 0 }
      all_words = (DICTIONARY[:verbs] + DICTIONARY[:nouns] + DICTIONARY[:articles]).flatten
      next if tokens.any? { |token| !all_words.include? token }

      DICTIONARY[:verbs].each do |verb|
        combos[:verbs] += 1 if tokens.index(verb)
      end

      if combos[:verbs] >= 1
        DICTIONARY[:nouns].each do |noun|
          combos[:nouns] += 1 if tokens.index(noun)
        end

        DICTIONARY[:articles].each do |article|
          combos[:articles] += 1 if tokens.index(article)
        end

        if combos[:nouns] >= 1 || combos[:articles] >= 2
          valid_sentences << permutation
        end
      end
    end
    valid_sentences
  end

  def permutation_creator
    n = @input.length
    buff = [0] * (2 * n)
    buff[0] = @input[0]
    permutation_helper(@input, buff, 1, 1, n)
  end

  private

  def to_string(list)
    string = ' '

    list.each do |item|
      if item == '\n'
        break
      else
        string += item;
      end
    end

    string
  end

  def permutation_helper(string, buff, i, j, n)
    if i == n
      buff[j] = '\n'
      @permutations << to_string(buff)
      return
    end

    buff[j] = string[i]
    permutation_helper(string, buff, i+1, j+1, n)

    buff[j] = ' '
    buff[j+1] = string[i]

    permutation_helper(string, buff, i+1, j+2, n)
  end
end

puts
puts "Testing 'abcdefg'"
test1 = Annkissam.new('abcdefg')
puts test1.validate

puts
puts "Testing 'abcc'"
test2 = Annkissam.new('abcc')
puts test2.validate

puts
puts "Testing 'abcd'"
test3 = Annkissam.new('abcd')
puts test3.validate

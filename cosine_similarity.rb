require 'matrix'

module StringNgram
  refine String do
    # create N-gram from string
    def to_ngram(n)
      self.each_char
        .each_cons(n)
        .map(&:join)
    end
  end
end

class CosineSimilarity
  attr_reader :term1, :term2, :union
  using StringNgram

  def initialize(first_term, second_term, n)
    @term1 = first_term.to_ngram(n)
    @term2 = second_term.to_ngram(n)
    @n = n
    @union = (@term1 + @term2).uniq
  end

  # compare union and term parameter、if exists in union return 1, else 0
  # example : term = ['today', 'tommorow'] union = ['today', 'tommorow', 'day after tommorow']  => [1, 1, 0]
  def adder(term, union)
    union.map { |i| term.include?(i) ? 1 : 0 }
  end

  def to_vector(term)
    Vector.elements(term, true)
  end

  def calc
    v1 = to_vector(adder(term1, union))
    v2 = to_vector(adder(term2, union))
    numerator = v1.inner_product(v2)
    denominator = v1.magnitude * v2.magnitude
    if denominator == 0.0
      0
    else
      (numerator / denominator).round(2)
    end
  end
end

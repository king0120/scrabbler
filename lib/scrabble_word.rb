class ScrabbleWord
  attr_reader :word
  def initialize word
    @word = word.downcase
    @score = 0
  end

  def score
    points = [
      ['aeilnorstu', 1],
      ['dg', 2],
      ['bcmp', 3],
      ['fhvwy', 4],
      ['k', 5],
      ['jx', 8],
      ['qz', 1]
    ]

    for point in points do
      @score += (@word.count(point[0]) * point[1])
    end
    @score
  end

  def multiplier_score multiplier
    self.score.to_i * multiplier.to_i
  end

end

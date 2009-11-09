class Presentation
  attr_reader :title, :presenter

  def initialize(title, presenter)
    @title = title
    @presenter = presenter
    @total = 0.0
    @count = 0
  end

  def add_score(n)
    @total += n
    @count += 1
  end

  def average_score
    @total / @count
  end
end

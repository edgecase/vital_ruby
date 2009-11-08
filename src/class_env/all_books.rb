class Book
  attr_reader :title, :author, :category

  def initialize(title, author, category=nil)
    @title = title
    @author = author
    @category = category
    self.class.all_books << self
  end

  def Book.all_books
    @all_books ||= []
  end
end

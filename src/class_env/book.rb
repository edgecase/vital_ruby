class Book
  attr_reader :title, :author, :category

  def initialize(title, author, category=nil)
    @title = title
    @author = author
    @category = category
  end
end
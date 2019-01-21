class Library
  # attr_reader :name, :cohort
  # attr_writer :name, :cohort
  attr_accessor :books

  # need an initialize to grab the input to the class
  def initialize(books)
    # initialize is a ruby
    @books = books
  end

  def get_book_dets(book_title)
    for book in @books
      if book[:title] == book_title
        return book
      end
    end
  end

  def get_rental_dets(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details]
      end
    end
  end


end

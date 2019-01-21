class Library

  attr_accessor :books

  # need an initialize to grab the input to the class
  def initialize(books)
    # initialize is a ruby function
    @books = books
  end

  def get_book_dets(book_title)
    for book in @books
      if book[:title] == book_title
        return book # returns the book hash
      end
    end
  end

  def get_rental_dets(book_title)
    for book in @books
      return book[:rental_details] if book[:title] == book_title
    end
  end

  def add_book(book_title)
    # add a book hash (book) to the array...
     book = Hash.new()
     book[:title] = book_title
     book[:rental_details]= []
     @books << book
  end

  def change_rental_dets(book_title, student, date)
    for book in @books
      if book[:title] == book_title
        book[rental_details:][:student_name] = student
        book[rental_details:][:date] = date
      end
    end 


  end


end

# Create a getter for the books
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book and adds it to our book list (add a new hash for
# the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title
# of the book, the student renting it and the date it's due to be returned.

require('minitest/autorun')
require('minitest/rg')
require_relative('../library_books')

class TestLibraryBooks < MiniTest::Test

  def setup
    # set up an array of books
    @books = [
      {
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "a fine balance",
        rental_details: {
          student_name: "Lucy",
          date: "01/12/17"
        }
      }
    ]
    # create a new instance of the Library class
    @my_books = Library.new(@books)

  end

  def test_get_book_dets
    book_dets = @my_books.get_book_dets("lord of the rings")

    assert_equal({
      title: "lord of the rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
      }, book_dets)
  end

  def test_get_rental_dets
    rental_book_dets = @my_books.get_rental_dets("a fine balance")

    assert_equal({
      student_name: "Lucy",
      date: "01/12/17"
      }, rental_book_dets)

  end

  def test_add_book
    @my_books.add_book("Pride and Prejudice","","")


    assert_equal([{:title=>"lord of the rings",
       :rental_details=>{:student_name=>"Jeff",
         :date=>"01/12/16"}},
          {:title=>"a fine balance",
            :rental_details=>{:student_name=>"Lucy",
               :date=>"01/12/17"}},
          {:title=>"Pride and Prejudice",
            :rental_details=>[{:student_name=>"", :date=>""}]}], @books)

  end

  def test_change_rental_dets
    book_dets = @my_books.change_rental_dets("a fine balance", "Julia", "01/01/19")

    assert_equal({
      title: "a fine balance",
        rental_details: {
          student_name: "Julia",
          date: "01/01/19"
      }
    }, book_dets)

  end

end # end of the test class

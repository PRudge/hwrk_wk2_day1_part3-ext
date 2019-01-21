# Extension:
#
# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title, which
# is a string, and rental details, which is another hash with a student name and due date.
# This should look something like:
#
# {
#   title: "lord_of_the_rings",
#   rental_details: {
#    student_name: "Jeff",
#    date: "01/12/16"
#   }
# }


# Create a getter for the books
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (add a new hash for
# the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title
# of the book, the student renting it and the date it's due to be returned.

require('minitest/autorun')
require('minitest/rg')
require_relative('../library_books')

class TestTeam < MiniTest::Test



  def setup

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
    @my_books = Library.new(@books)
    p @my_books
  end

  def test_get_book_dets
    book_dets = @my_books.get_book_dets("lord of the rings")
    # assert_equal("Jeff", book_dets[:rental_details][:student_name])
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
    # assert_equal("Jeff", book_dets[:rental_details][:student_name])
    assert_equal({
        student_name: "Lucy",
        date: "01/12/17"
      }, rental_book_dets)
  end

end

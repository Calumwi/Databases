require_relative '../lib/book_repository.rb'

RSpec.describe BookRepository do
  it 'returns all books' do

bookstore = BookRepository.new
books = bookstore.all

expect(books.length).to eq(5)
expect(books.first.title).to eq "Nineteen Eighty-Four"
expect(books.first.author_name).to eq "George Orwell"
expect(books.first.id).to eq "1"

  end
end
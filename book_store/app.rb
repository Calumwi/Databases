# file: app.rb

require_relative 'lib/database_connection'
require_relative 'lib/book_repository'


# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store')

book_print = BookRepository.new

book_print.all.each do |book|
    p book
end
# Perform a SQL query on the database and get the result set.
# sql = 'SELECT id, title FROM albums;'
# result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .
# result.each do |record|
#   p record
# end
require 'sqlite3'
require 'pry'

$db = SQLite3::Database.new("test.db", results_as_hash: true)

# rows = db.execute <<-SQL
#   create table numbers (
#     name varchar(30),
#     val int
#   );
# SQL

# Execute a few inserts
# {
#   "one" => 1,
#   "two" => 2,
# }.each do |pair|
#   db.execute("insert into numbers values ( ?, ? )", pair)
# end

# p db.execute("SELECT * from numbers")

class Number
  attr_accessor :name, :val

  def initialize(name, val)
    @name = name
    @val = val
  end

  def self.all
    nums_from_db = $db.execute("SELECT * from numbers")
    nums_from_db.map do |num_hash|
      Number.new(num_hash["name"], num_hash["val"])
    end
  end

  def save
    $db.execute("insert into numbers (name, val) values ( ?, ? )", self.name, self.val)

    self.id = $db.last_insert_row_id
  end

end

p Number.all

three = Number.new("three", 3)
#
three.save

p Number.all

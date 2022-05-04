require "http"
require "tty-table"

system "clear"
response = HTTP.get("http://localhost:3000/products")
products = response.parse
puts products

table = TTY::Table.new do |t|
    t << 
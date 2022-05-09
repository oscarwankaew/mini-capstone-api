require "http"
require "tty-table"

system "clear"
response = HTTP.get("http://localhost:3000/products")
products = response.parse
puts products

table = TTY::Table.new(["name", "price", "image_url", "description"], [["a1", "a2"], ["b1", "b2"]])
puts table.render(:ascii)
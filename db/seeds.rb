Supplier.create! {
  [
    { name: "Exclusive company", email: "exclusiveco@test.com", phone_number: "343-999-7777" },
    { name: "Boring company", email: "boring.musk@test.com", phone_number: "123-456-7890" },
    { name: "Walmart", email: "walmart@test.com", phone_number: "222-333-444" },
  ]
}
Product.create! {
  [
    { name: "Basketball", price: 9.0, description: "bouncy and very round", inventory: 54, supplier_id: 1 },
    { name: "Teddy bear", price: 9.0, description: "very fluffy and cozzy", inventory: 200, supplier_id: 1 },
    { name: "Bicycle", price: 99.0, description: "comes with two wheels", inventory: 23, supplier_id: 1 },
    { name: "20 pack Golf balls", price: 60000.0, description: "made out of diamonds!", inventory: 1, supplier_id: 3 },
    { name: "orange juice", price: 5.99, description: "very fresh and replunishing", inventory: nil, supplier_id: 1 },
    { name: "Harry potter book III", price: 3000.0, description: "last copy of the book!", inventory: 1, supplier_id: 2 },
    { name: "Fishing rod", price: 12900000.0, description: "strongest fishing rod!!", inventory: 1, supplier_id: 3 },
    { name: "Socks", price: 5.0, description: "only comes one side!", inventory: 1, supplier_id: 2 },
    { name: "Desk", price: 45.0, description: "very comfortable", inventory: 4, supplier_id: 1 },
    { name: "Samsung TV", price: 595.0, description: "it will break after couple of years!", inventory: 50, supplier_id: 1 },
  ]
}

Image.create(url: "https://artwork.espncdn.com/categories/cd70a58e-a830-330c-93ed-52360b51b632/1x1Feature/1440_201903062023.jpg", product_id: 1)
Image.create(url: "https://m.media-amazon.com/images/I/71qtAiNUCpL._AC_SL1200_.jpg", product_id: 2)
Image.create(url: "https://upload.wikimedia.org/wikipedia/commons/4/41/Left_side_of_Flying_Pigeon.jpg", product_id: 3)
Image.create(url: "https://m.media-amazon.com/images/I/511ru5WNbqL._AC_SY450_.jpg", product_id: 4)
Image.create(url: "https://www.alphafoodie.com/wp-content/uploads/2020/11/Orange-Juice-1-of-1.jpeg", product_id: 5)
Image.create(url: "https://images-na.ssl-images-amazon.com/images/I/918SEwAMIAL.jpg", product_id: 6)
Image.create(url: "https://m.media-amazon.com/images/I/31lt1XO9+aS._AC_SY1000_.jpg", product_id: 7)
Image.create(url: "https://garneau.com/media/catalog/product/cache/10f519365b01716ddb90abc57de5a837/1/0/1085057_775_01.jpg", product_id: 8)
Image.create(url: "https://www.ikea.com/us/en/images/products/arkelstorp-desk-black__0735967_pe740301_s5.jpg?f=s", product_id: 9)
Image.create(url: "https://img.us.news.samsung.com/us/wp-content/uploads/2019/01/14103848/Samsung-TV_iTunes-Movies-and-TV-shows.jpg", product_id: 10)

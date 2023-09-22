AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$11$KhlWDM/dtZQ/9sVfTJv2FeDaqTZrsPW.Cs8WBuv8ti5Da1OtIoERu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {email: "admin1@example.com", encrypted_password: "$2a$11$.VlCnOYbSjkI0YAMyENTiO2/FpCYHcRn.iafUbAUqM9i7FUM/sC4G", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Brand.create!([
  {name: "Milka", image: "mm.jpg"},
  {name: "Kit kat", image: "g_k.jpg"}
])
Category.create!([
  {name: "Chocolate Bar", type_id: 1, image: "chocolate_bar.jpg"},
  {name: "Quick Bar", type_id: 1, image: "quick.jpg"}
])
Collection.create!([
  {name: "Milka", image: "g_m.jpg"},
  {name: "Haribo", image: "g_h.jpg"},
  {name: "Maple", image: "g_maple.jpg"},
  {name: "Honey", image: "honey.png"},
  {name: "Pez", image: "g_p.jpg"},
  {name: "Kit Kat", image: "g_k.jpg"},
  {name: "Aero", image: "g_a.jpg"},
  {name: "RJ", image: "g_r.png"},
  {name: "Taffy", image: "g_s.jpg"}
])
Customer.create!([
  {email: "nmaisel04@gmail.com", encrypted_password: "$2a$11$7WFMLbZxMhzD1jYR6WCWvurcEaayAqRaYQtLbmJjxlVR83zYhYJhy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, first_name: nil, last_name: nil, address: nil, postal_code: nil, city: nil, province_id: nil, phone: nil},
  {email: "example@gamil.com", encrypted_password: "$2a$11$IEWRswHd5qZYpmsyFoHDueYhb.dlzSxhWA9hzZiMDLt.x3lFiP5/u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, first_name: nil, last_name: nil, address: nil, postal_code: nil, city: nil, province_id: nil, phone: nil},
  {email: "example1@gmail.com", encrypted_password: "$2a$11$iwM18gCKVuXtSsy7iqhNeuqndf9vEV2c7MpSPYwEmGextxFOi2oYu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, first_name: nil, last_name: nil, address: nil, postal_code: nil, city: nil, province_id: nil, phone: nil},
  {email: "admin1@example.com", encrypted_password: "$2a$11$3IyQq30pKAy2sfJAqR7Q4ODYzuii3QJDUphjZCXJDkq7WsNlc.kY.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, first_name: "q", last_name: "", address: "", postal_code: "", city: "", province_id: 2, phone: ""}
])
Product.create!([
  {name: "Milka Oreo 100g", barcode: "987654321", description: "Milka Oreo ", price: "3.99", image: "milka.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 100},
  {name: "Milka Raspberry 100g", barcode: "123456789", description: "Milka Raspberry", price: "3.99", image: "ra.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 50},
  {name: "5 Milka Oreo 100g", barcode: "987654321", description: "Milka Oreo ", price: "3.99", image: "milka.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 100},
  {name: "6 Milka Raspberry 100g", barcode: "123456789", description: "Milka Raspberry", price: "3.99", image: "ra.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 50},
  {name: "7 Milka Oreo 100g", barcode: "987654321", description: "Milka Oreo ", price: "3.99", image: "ra.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 100},
  {name: "8 Milka Raspberry 100g", barcode: "123456789", description: "Milka Raspberry", price: "3.99", image: "ra.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 50},
  {name: "9 Milka Oreo 100g", barcode: "987654321", description: "Milka Oreo ", price: "3.99", image: "milka.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 100},
  {name: "10 Milka Raspberry 100g", barcode: "123456789", description: "Milka Raspberry", price: "3.99", image: "milka.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 50},
  {name: "11 Milka Oreo 100g", barcode: "987654321", description: "Milka Oreo ", price: "3.99", image: "ra.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 100},
  {name: "Haribo", barcode: "123456789", description: "Milka Raspberry", price: "3.99", image: "milka.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 2, enabled: true, quantity: 50},
  {name: "13 Milka Oreo 100g", barcode: "987654321", description: "Milka Oreo ", price: "3.99", image: "milka.jpg", brand_id: 2, category_id: 2, tag_id: nil, collection_id: 1, enabled: true, quantity: 100},
  {name: "14 Milka Raspberry 100g", barcode: "123456789", description: "Milka Raspberry", price: "3.99", image: "milka.jpg", brand_id: 1, category_id: 2, tag_id: nil, collection_id: 1, enabled: true, quantity: 50},
  {name: "15 Milka Oreo 100g", barcode: "987654321", description: "Milka Oreo ", price: "3.99", image: "milka.jpg", brand_id: 2, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 100},
  {name: "16 Milka Raspberry 100g", barcode: "123456789", description: "Milka Raspberry", price: "30.0", image: "ra.jpg", brand_id: 1, category_id: 1, tag_id: nil, collection_id: 1, enabled: true, quantity: 50}
])
Province.create!([
  {name: "Manitoba", province_tax: "0.07"},
  {name: "Ontario", province_tax: "0.07"}
])
Tag.create!([
  {name: "Sugar Free"},
  {name: "Fat free"}
])
Type.create!([
  {name: "Chocolate"}
])
Cart.create!([
  {},
  {},
  {},
  {},
  {},
  {}
])
CartProduct.create!([
  {cart_id: 1, product_id: 4, quantity: 2},
  {cart_id: 1, product_id: 2, quantity: 6},
  {cart_id: 1, product_id: 1, quantity: 1},
  {cart_id: 2, product_id: 2, quantity: 9}
])
ProductTag.create!([
  {product_id: 1, tag_id: 1},
  {product_id: 14, tag_id: 2},
  {product_id: 14, tag_id: 1}
])

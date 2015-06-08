# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#. . .
Product.create(title: 'Embroidered Trench Coat',
    description:
        %{<p>
          Embroidered flower<br>
          Open front<br>
          About me:<br>
          100% polyester<br>
        </p>},
    image_url: '1.jpg',
    price: 77.00)

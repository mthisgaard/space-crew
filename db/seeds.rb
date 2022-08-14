puts 'Destroying all Crem Members...'

CrewMember.destroy_all
Mission.destroy_all

puts '...all Crem Members destroyed.'

puts 'Creating Crew Members...'

CrewMember.create!(
  name: 'Sylvain Pierre', 
  position: 'Captain',
  origin: 'Ceres',
  photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_440,q_auto,w_630/v1543815823/uljycpmfoidynq2zoue9.webp'
)

CrewMember.create!(
  name: 'Douglas Berkley', 
  position: 'Executive Officer',
  origin: 'Earth',
  photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_600,w_600/viqfqp0tfkmcwmj7cfwe.jpg'
)

CrewMember.create!(
  name: 'Yann Klein', 
  position: 'Medical Officer',
  origin: 'Luna',
  photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_440,q_auto,w_630/v1555660191/dpjompy0xq3fgsrptoss.webp'
)

CrewMember.create!(
  name: 'Trouni Tiet', 
  position: 'Engineer',
  origin: 'Ganymede',
  photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_440,q_auto,w_630/v1569902527/oywemtu6jmosrgqmynh2.webp'
)

CrewMember.create!(
  name: 'Sasha Kaverina', 
  position: 'Pilot',
  origin: 'Europa',
  photo_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_440,q_auto,w_630/v1597104558/d1r0rlaegapxsihsnkdh.webp'
)

puts "#{CrewMember.count} crew members created."

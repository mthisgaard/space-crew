require 'faker'

ORIGINS = [ 'Earth', 'Europa', 'Mars', 'Luna', 'Ceres', 'Eros', 'Luna', 'Ganymede', 'Callisto']
POSITIONS = ['Captain', 'Chief Engineer', 'Pilot', 'Mechanic', 'Gunner']


puts 'Destroying all Crem Members...'

CrewMember.destroy_all
Mission.destroy_all

puts '...all Crem Members destroyed.'

puts 'Creating Crew Members...'

POSITIONS.each do |position|
  CrewMember.create!(
    name: Faker::Name.name, 
    position: position,
    origin: ORIGINS.sample
  )
end

puts "#{CrewMember.count} crew members created."

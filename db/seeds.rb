puts "🌱 Seeding spices..."

# Seed your database here
3.times do 
 Article.create([
	{
		author: "Rita Skeeter",
		title: "Harry Potter Wanted for Questioning",
		description: "Harry Potter is wanted for questioning at the Ministry of Magic",

		country: "UK",

	 }, 
	 {
		author: "Rita Skeeter",
		title: "Harry Potter Wanted for Questioning",
		description: "Harry Potter is wanted for questioning at the Ministry of Magic",

		country: "UK",

	 }, 
 ])
end 

5.times do 
	Comment.create([
		user: Faker::Movies::HarryPotter.character, 
		comment: "That Harry Potter is a menace!"
	])
end 

puts "✅ Done seeding!"

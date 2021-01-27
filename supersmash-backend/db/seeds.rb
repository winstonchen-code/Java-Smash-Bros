# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fighter.destroy_all
Stage.destroy_all 
FighterStage.destroy_all

Fighter.create(name: "Mario", series: "Super Mario", image: "https://www.ssbwiki.com/images/thumb/4/44/Mario_SSBU.png/1200px-Mario_SSBU.png", description: "A powerful character", likes: 0)
Fighter.create(name: "Donkey Kong", series: "Donkey Kong", image: "https://www.ssbwiki.com/images/thumb/c/c9/Donkey_Kong_SSBU.png/1200px-Donkey_Kong_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Link", series: "Legend of Zelda", image: "https://www.ssbwiki.com/images/thumb/4/44/Mario_SSBU.png/1200px-Mario_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Captain Falcon", series: "F-Zero", image: "https://www.ssbwiki.com/images/thumb/d/da/Captain_Falcon_SSBU.png/600px-Captain_Falcon_SSBU.png", description: "Quick")
Fighter.create(name: "Ness", series: "Earthbound", image: "https://www.ssbwiki.com/images/thumb/4/44/Mario_SSBU.png/1200px-Mario_SSBU.png", description: "Quick")
Fighter.create(name: "Yoshi", series: "Mario", image: "https://www.ssbwiki.com/images/thumb/8/8d/Yoshi_SSBU.png/600px-Yoshi_SSBU.png", description: "Quick")
Fighter.create(name: "Luigi", series: "Mario", image: "https://www.ssbwiki.com/images/thumb/b/bb/Luigi_SSBU.png/547px-Luigi_SSBU.png", description: "Quick")
Fighter.create(name: "Jigglypuff", series: "Pokemon", image: "https://www.ssbwiki.com/images/thumb/4/44/Mario_SSBU.png/1200px-Mario_SSBU.png", description: "Quick")
Fighter.create(name: "Pikachu", series: "Pokemon", image: "https://www.ssbwiki.com/images/thumb/4/44/Mario_SSBU.png/1200px-Mario_SSBU.png", description: "Quick")
Fighter.create(name: "Kirby", series: "Kirby", image: "https://www.ssbwiki.com/images/thumb/4/44/Mario_SSBU.png/1200px-Mario_SSBU.png", description: "Quick")
Fighter.create(name: "Fox", series: "Star fox", image: "https://www.ssbwiki.com/images/thumb/2/2f/Fox_SSBU.png/600px-Fox_SSBU.png", description: "Quick")
Fighter.create(name: "Peach", series: "Mario", image: "https://www.ssbwiki.com/images/thumb/7/74/Peach_SSBU.png/531px-Peach_SSBU.png", description: "Quick")
Fighter.create(name: "Bowser", series: "Mario", image: "https://www.ssbwiki.com/images/thumb/4/49/Bowser_SSBU.png/600px-Bowser_SSBU.png", description: "Quick")
Fighter.create(name: "Dr. Mario", series: "Dr Mario", image: "https://www.ssbwiki.com/File:Dr._Mario_SSBU.png", description: "Quick")
Fighter.create(name: "Zelda", series: "Legend of Zelda", image: "https://www.ssbwiki.com/images/thumb/c/c8/Zelda_SSBU.png/600px-Zelda_SSBU.png", description: "Quick")


Stage.create(name: "Corneria", image: "https://www.ssbwiki.com/images/thumb/0/01/SSBU-Corneria.png/1200px-SSBU-Corneria.png", music: "", maxplayers: 8, likes: 5)

FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
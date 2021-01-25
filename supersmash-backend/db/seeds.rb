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

Fighter.create(name: "Mario", series: "Super Mario", image: "https://www.ssbwiki.com/images/thumb/4/44/Mario_SSBU.png/1200px-Mario_SSBU.png", description: "A powerful character")
Fighter.create(name: "Donkey Kong", series: "Donkey Kong", image: "https://www.ssbwiki.com/images/thumb/4/44/Mario_SSBU.png/1200px-Mario_SSBU.png", description: "Quick")
Fighter.create(name: "Donkey Kong", series: "Donkey Kong", image: "https://www.ssbwiki.com/images/thumb/4/44/Mario_SSBU.png/1200px-Mario_SSBU.png", description: "Quick")

Stage.create(name: "Arena")

FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
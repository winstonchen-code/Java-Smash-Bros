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
Fighter.create(name: "Donkey Kong", series: "Donkey Kong", image: "https://www.ssbwiki.com/images/thumb/c/c9/Donkey_Kong_SSBU.png/600px-Donkey_Kong_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Link", series: "Legend of Zelda", image: "https://www.ssbwiki.com/images/thumb/8/84/Link_SSBU.png/1200px-Link_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Captain Falcon", series: "F-Zero", image: "https://www.ssbwiki.com/images/thumb/d/da/Captain_Falcon_SSBU.png/600px-Captain_Falcon_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Ness", series: "Earthbound", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4e613a10-c04e-4e1b-a757-595af4db83b1/dbg89jd-10e3505f-ee6e-4c3a-a1c6-53fcf3c38773.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvNGU2MTNhMTAtYzA0ZS00ZTFiLWE3NTctNTk1YWY0ZGI4M2IxXC9kYmc4OWpkLTEwZTM1MDVmLWVlNmUtNGMzYS1hMWM2LTUzZmNmM2MzODc3My5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.h0wj3bE-4TU1C0PiSOAv3rs_8zcR-RyxVFi-yyMxy-k", description: "Quick", likes: 0)
Fighter.create(name: "Yoshi", series: "Mario", image: "https://www.ssbwiki.com/images/thumb/8/8d/Yoshi_SSBU.png/600px-Yoshi_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Luigi", series: "Mario", image: "https://www.ssbwiki.com/images/thumb/b/bb/Luigi_SSBU.png/547px-Luigi_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Jigglypuff", series: "Pokemon", image: "https://www.ssbwiki.com/images/thumb/6/6a/Jigglypuff_SSBU.png/1200px-Jigglypuff_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Pikachu", series: "Pokemon", image: "https://www.ssbwiki.com/images/thumb/9/93/Pikachu_SSBU.png/1200px-Pikachu_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Kirby", series: "Kirby", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/31c5ef3a-c8fd-4d20-b19c-bace7f78f285/dct2k3r-fc1d7593-e13b-4a6f-baf6-71c8075addbb.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvMzFjNWVmM2EtYzhmZC00ZDIwLWIxOWMtYmFjZTdmNzhmMjg1XC9kY3QyazNyLWZjMWQ3NTkzLWUxM2ItNGE2Zi1iYWY2LTcxYzgwNzVhZGRiYi5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.b_Rx39tFfO3-v9pds6d0GMIp8ndt77SGvnQfKIwv72M", description: "Quick", likes: 0)
Fighter.create(name: "Fox", series: "Star fox", image: "https://www.ssbwiki.com/images/thumb/2/2f/Fox_SSBU.png/600px-Fox_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Peach", series: "Mario", image: "https://www.ssbwiki.com/images/thumb/7/74/Peach_SSBU.png/531px-Peach_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Bowser", series: "Mario", image: "https://www.ssbwiki.com/images/thumb/4/49/Bowser_SSBU.png/600px-Bowser_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Dr. Mario", series: "Dr Mario", image: "https://www.ssbwiki.com/File:Dr._Mario_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Zelda", series: "Legend of Zelda", image: "https://www.ssbwiki.com/images/thumb/c/c8/Zelda_SSBU.png/600px-Zelda_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Shiek", series: "Legend of Zelda", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f38bcedb-d1e0-4905-8b73-1f3785aa8291/dcea881-3948d7a4-aab8-4e4d-b733-0faf6ced9dac.png/v1/fill/w_1024,h_1196,strp/sheik___super_smash_bros__ultimate_render_by_doctorwd_dcea881-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD0xMTk2IiwicGF0aCI6IlwvZlwvZjM4YmNlZGItZDFlMC00OTA1LThiNzMtMWYzNzg1YWE4MjkxXC9kY2VhODgxLTM5NDhkN2E0LWFhYjgtNGU0ZC1iNzMzLTBmYWY2Y2VkOWRhYy5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.37IDk0zRzARQR9eBf2sJtqoknQ1SLoALJFCcw5H_XME", description: "Quick", likes: 0)
Fighter.create(name: "Young Link", series: "Legend of Zelda", image: "https://www.ssbwiki.com/images/thumb/8/8a/Young_Link_SSBU.png/1200px-Young_Link_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Gannondorf", series: "Legend of Zelda", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8bcbac46-c322-4678-9738-e08774e90a1e/ddb7r9s-5cfee25d-1a48-4797-b4a9-50efaa191c99.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvOGJjYmFjNDYtYzMyMi00Njc4LTk3MzgtZTA4Nzc0ZTkwYTFlXC9kZGI3cjlzLTVjZmVlMjVkLTFhNDgtNDc5Ny1iNGE5LTUwZWZhYTE5MWM5OS5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.cLuvx2zQo4QrUPEmW-S9hwQfreuxCYN-XSiHVdi4qWo", description: "Quick", likes: 0)
Fighter.create(name: "Toon Link", series: "Legend of Zelda", image: "https://www.ssbwiki.com/images/thumb/5/56/Toon_Link_SSBU.png/1200px-Toon_Link_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Samus", series: "Metroid", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/bfdb7d48-342a-4f44-8f2d-ca5203070d57/dce8bgp-1391c0c4-052e-4ff3-bdbc-979e6508ed35.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvYmZkYjdkNDgtMzQyYS00ZjQ0LThmMmQtY2E1MjAzMDcwZDU3XC9kY2U4YmdwLTEzOTFjMGM0LTA1MmUtNGZmMy1iZGJjLTk3OWU2NTA4ZWQzNS5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.2HL8ngW2juH3S5INV4-U6sh7PlI3o9Qpqm6pylTc3bM", description: "Quick", likes: 0)
Fighter.create(name: "Robin", series: "Fire Emblem", image: "https://www.ssbwiki.com/images/thumb/8/82/Robin_SSBU.png/1200px-Robin_SSBU.png", description: "Quick", likes: 0)
Fighter.create(name: "Corrin", series: "Fire Emblem", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/bfdb7d48-342a-4f44-8f2d-ca5203070d57/dcp4csh-c7d1c446-ba45-40f4-a5ff-0932d232678d.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvYmZkYjdkNDgtMzQyYS00ZjQ0LThmMmQtY2E1MjAzMDcwZDU3XC9kY3A0Y3NoLWM3ZDFjNDQ2LWJhNDUtNDBmNC1hNWZmLTA5MzJkMjMyNjc4ZC5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.FOehpnKaX8MkybIkTafJH0jq4-ZxtTiDRLpA6SPR3_o", description: "Quick", likes: 0)
Fighter.create(name: "Mr.Game and Watch" , series: "Game and Watch", image: "https://www.ssbwiki.com/images/thumb/c/cb/Mr._Game_%26_Watch_SSBU.png/250px-Mr._Game_%26_Watch_SSBU.png", description: "Flat", likes: 0)
Fighter.create(name: "Pit" , series: "Kid Icarus", image: "https://www.ssbwiki.com/images/thumb/3/38/Pit_SSBU.png/1200px-Pit_SSBU.png", description: "Flat", likes: 0)
Fighter.create(name: "Palutena" , series: "Kid Icarus", image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cc68772e-cd7c-48ab-b4db-b6c6baf178c5/dcj8x3e-23d1ea7e-f4f4-445c-916c-083df40a69f8.png/v1/fill/w_1024,h_1379,strp/super_smash_bros_ultimate_render__53__palutena_by_falconburst322_dcj8x3e-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD0xMzc5IiwicGF0aCI6IlwvZlwvY2M2ODc3MmUtY2Q3Yy00OGFiLWI0ZGItYjZjNmJhZjE3OGM1XC9kY2o4eDNlLTIzZDFlYTdlLWY0ZjQtNDQ1Yy05MTZjLTA4M2RmNDBhNjlmOC5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.3Qui6gsgFAUAv6YXTZpR-8mk1ZcAoEOSdwe5Ii9BAGM", description: "Flat", likes: 0)
Fighter.create(name: "Dark Pit" , series: "Kid Icarus", image: "https://www.ssbwiki.com/images/thumb/0/09/Dark_Pit_SSBU.png/1200px-Dark_Pit_SSBU.png", description: "Flat", likes: 0)
Fighter.create(name: "Wario" , series: "Wario Ware", image: "https://www.mariowiki.com/images/thumb/2/29/SMPWario.png/1200px-SMPWario.png", description: "Flat", likes: 0)

Stage.create(name: "Corneria", image: "https://www.ssbwiki.com/images/thumb/0/01/SSBU-Corneria.png/1200px-SSBU-Corneria.png", music: "", maxplayers: 8, likes: 0)
Stage.create(name: "Battlefield", image: "https://www.ssbwiki.com/images/thumb/8/86/SSBU-Battlefield.png/1200px-SSBU-Battlefield.png", music: "", maxplayers: 8, likes: 0)
Stage.create(name: "Final Destination", image: "https://static.wikia.nocookie.net/ssb/images/9/98/Finaldestination.jpg/revision/latest?cb=20160113061423", music: "", maxplayers: 14, likes: 0)
Stage.create(name: "Peach's Castle", image: "https://www.ssbwiki.com/images/thumb/2/2a/SSBU-Princess_Peach%27s_Castle.png/300px-SSBU-Princess_Peach%27s_Castle.png", music: "", maxplayers: 6, likes: 0)
Stage.create(name: "Kongo Jungle", image: "https://www.ssbwiki.com/images/thumb/7/73/SSBU-Kongo_Jungle.png/1200px-SSBU-Kongo_Jungle.png", music: "", maxplayers: 4, likes: 0)
Stage.create(name: "Dream Land", image: "https://www.ssbwiki.com/images/thumb/6/68/SSBU-Dream_Land.png/1200px-SSBU-Dream_Land.png", music: "", maxplayers: 4, likes: 0)
Stage.create(name: "Mario Circuit", image: "https://www.ssbwiki.com/images/thumb/d/de/SSBU-Mario_Circuit_%28SSB4%29.png/1200px-SSBU-Mario_Circuit_%28SSB4%29.png", music: "", maxplayers: 8, likes: 0)
Stage.create(name: "Venom", image: "https://www.ssbwiki.com/images/thumb/8/8d/SSBU-Venom.png/300px-SSBU-Venom.png", music: "", maxplayers: 12, likes: 0)
Stage.create(name: "Pokemon Stadium 2", image: "https://www.ssbwiki.com/images/thumb/7/73/SSBU-Pok%C3%A9mon_Stadium_2.png/1200px-SSBU-Pok%C3%A9mon_Stadium_2.png", music: "", maxplayers: 6, likes: 0)
Stage.create(name: "Onett", image: "https://www.ssbwiki.com/images/thumb/6/68/SSBU-Onett.png/1200px-SSBU-Onett.png", music: "", maxplayers: 8, likes: 0)


FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
FighterStage.create(fighter_id: Fighter.all.sample.id, stage_id: Stage.all.sample.id)
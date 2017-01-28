# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

machines_neuves = Category.create(
	name: "Machines Neuves",
	slug: "machines-neuves"
)

sciage = SubCategory.create(
	name: "Sciage",
	slug: "sciage-debitage",
	category_id: machines_neuves.id
)

poinconnage = SubCategory.create(
	name: "Poinconnage",
	slug: "poinconnage-poinconneuse-hydrolique-multifonction",
	category_id: machines_neuves.id
)

cisailles = SubCategory.create(
	name: "Cisailles",
	slug: "cisailles-decoupe-guillotine",
	category_id: machines_neuves.id
)

presse_plieuse = SubCategory.create(
	name: "Presse Plieuse",
	slug: "presse-plieuse",
	category_id: machines_neuves.id
)

combi = SubCategory.create(
	name: "Plieuses-Cisailles Combi",
	slug: "plieuse-cisaille-combi",
	category_id: machines_neuves.id
)

encocheuse = SubCategory.create(
	name: "Encocheuse à Tolle",
	slug: "encocheuse-tolle",
	category_id: machines_neuves.id
)


presse_atelier = SubCategory.create(
	name: "Presse d'atelier verticales / horizontales",
	slug: "presse-atelier-verticale-horizontale",
	category_id: machines_neuves.id
)

roulage = SubCategory.create(
	name: "Roulage Cintrage Profilé",
	slug: "roulage-cintrage-profile",
	category_id: machines_neuves.id
)


jet_deau = SubCategory.create(
	name: "Découpe Jet D'eau",
	slug: "decoupe-jet-eau",
	category_id: machines_neuves.id
)


usinage = SubCategory.create(
	name: "Centre d'usinage Banc de percage",
	slug: "centre-usinage-banc-de-perçage",
	category_id: machines_neuves.id
)


perceuse = SubCategory.create(
	name: "Perceuse à colonne",
	slug: "percage-perceuse-colonne",
	category_id: machines_neuves.id
)

Brand.create(name: "MEP")
Brand.create(name: "Mubea")
Brand.create(name: "Sahinler")
Brand.create(name: "Durma")
Brand.create(name: "Safan Darley")
Brand.create(name: "Combi")
Brand.create(name: "Waterjet")
Brand.create(name: "Bauer")
Brand.create(name: "Adriatica")
Brand.create(name: "Mecan Europa")









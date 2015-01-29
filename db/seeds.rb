# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Notes.delete_all

Notes.create(title: "note 1", body: "This is a test note")
Notes.create(title: "note 2", body:"This is a test note as well")
Notes.create(title: "note 3", body:" test notetest notetest notetest notetest notetest notetest note")
Notes.create(title: "note 4",body: "")

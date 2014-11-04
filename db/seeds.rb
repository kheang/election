# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Candidate.destroy_all
Voter.destroy_all

Candidate.create(name: "Kay Hagan", party: "Democratic")
Candidate.create(name: "Thom Thills", party: "Republican")

Voter.create(name: "Jane", party: "Unaffiliated")
Voter.create(name: "John", party: "Unaffiliated")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Candidate.destroy_all
Voter.destroy_all

candidate1 = Candidate.create(name: "Kay Hagan", party: "Democratic")
candidate2 = Candidate.create(name: "Thom Thills", party: "Republican")

voter1 = Voter.create(name: "Jane", party: "Unaffiliated")
voter2 = Voter.create(name: "John", party: "Unaffiliated")

seat1 = Seat.create(office_name: "Senate", district: "NC")

vote1 = Vote.create(voter: voter1, candidate: candidate1, seat: seat1)
vote2 = Vote.create(voter: voter2, candidate: candidate2, seat: seat1)
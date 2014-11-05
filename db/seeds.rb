# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Candidate.destroy_all
Voter.destroy_all

seat1 = Seat.create(office_name: "House", district: "NC")

candidate1 = Candidate.create(name: "Candidate One", party: "Party One", seat: seat1)
candidate2 = Candidate.create(name: "Candidate Two", party: "Party Two", seat: seat1)

voter1 = Voter.create(name: "Voter One", party: "Party One")
voter2 = Voter.create(name: "Voter Two", party: "Party Two")
voter3 = Voter.create(name: "Voter Three", party: "Unaffiliated")

vote1 = Vote.create(voter: voter1, seat: seat1, candidate: candidate1)
vote2 = Vote.create(voter: voter2, seat: seat1, candidate: candidate2)
vote3 = Vote.create(voter: voter3, seat: seat1, candidate: candidate2)
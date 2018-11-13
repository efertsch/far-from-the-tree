# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tests have a type and a unit
tests = [
  ["Specific Gravity", "SG", nil],
  ["pH", nil, nil],
  ["Titratable Acidity", "TA" "g/L"],
  ["Yeast Assimilable Nitrogen", "YAN", "mg N/L"],
  ["Free SO2", nil, "ppm"],
  ["Malolactic Fermentation Chromatography", "MLF", nil],
  ["Total Tannin", nil, "%"]
]

tests.each do |t|
  Test.create!(name: t[0], abbreviation: t[1], units: t[2])
end

# Stages have a description and a location
stages = [
  ["pre-fermentation", "Cellar"],
  ["fermentation", "Cellar"],
  ["storage", "Production Room"],
  ["pre-packaging", "Cold Room"],
  ["post-packaging", "Cellar"]
]

stages.each do |stage|
  Stage.create!(description: stage[0], location: stage[1])
end

# Users have a name, email, password
users = [
  ["Ethan F.", "ecfertsch@gmail.com", "password"]
]

users.each do |user|
  User.create!(name: user[0], email: user[1], password_digest: user[2])
end


# Batches have a date_received and apple_composition
juice_shipments = [
  [Date.new(2018, 9, 1), "macintosh", 1.050],
  [Date.new(2018, 11, 1), "macintosh, cortland", 1.050]
]

juice_shipments.each do |shipment|
  JuiceShipment.create!(date_received: shipment[0], apple_composition: shipment[1], specific_gravity: shipment[2])
end


# Samples have a start_date, finish_date, tote_size, juice_shipment_id, stage_id, group, yeast_type, round
samples = [
  [Date.new(2018, 9, 1), nil, 275, 1, 1, "SG-1", "VL-3", 0],
  [Date.new(2018, 9, 1), nil, 275, 1, 1, "SG-1", "VL-3", 0],
  [Date.new(2018, 9, 1), nil, 275, 1, 1, "SG-1", "VL-3", 0],
  [Date.new(2018, 9, 1), nil, 275, 1, 1, "SG-1", "VL-3", 0],
  [Date.new(2018, 11, 1), nil, 275, 2, 1, "SG-2", "VL-3", 0],
  [Date.new(2018, 11, 1), nil, 275, 2, 1, "SG-2", "VL-3", 0],
  [Date.new(2018, 11, 1), nil, 275, 2, 1, "SG-2", "VL-3", 0],
  [Date.new(2018, 11, 1), nil, 275, 2, 1, "SG-2", "VL-3", 0]
]

samples.each do |sample|
  Sample.create!(start_date: sample[0], finish_date: sample[1], tote_size: sample[2], juice_shipment_id: sample[3], stage_id: sample[4], group: sample[5], yeast_type: sample[6], round: sample[7])
end

# Experiments have a date, value, test_id, sample_id, notes
experiments = [
  [Date.new(2018, 9, 1), "4.0", 2, 1, "Higher than usual pH"],
  [Date.new(2018, 9, 1), "3.6", 2, 2, "Higher than usual pH"],
  [Date.new(2018, 9, 1), "3.8", 2, 3, "Higher than usual pH"],
  [Date.new(2018, 9, 1), "3.6", 2, 4, "Higher than usual pH"]
]

experiments.each do |experiment|
  Experiment.create!(date: experiment[0], result: experiment[1], test_id: experiment[2], sample_id: experiment[3], notes: experiment[4])
end

# Additions have a chemical_name, amount, notes, unit, date, sample_id
additions = [
  ["KBMS", "260g", Date.new(2018, 9, 1), "Initial SO2 dose", 1],
  ["Pectolytic Enzyme", "18g", Date.new(2018, 9, 6), "Heavy pectin", 1],
  ["KBMS", "260g", Date.new(2018, 9, 1), "Initial SO2 dose", 2],
  ["KBMS", "260g", Date.new(2018, 10, 30), "Storage SO2 dose, SCOBY formation", 1]
]

additions.each do |addition|
  Addition.create!(chemical_name: addition[0], amount: addition[1], date: addition[3], notes: addition[4], sample_id: addition[5])
end

# Appointments have a date, test_id, sample_id, description
appointments = [
  [Date.new(2018, 9, 7), 1, 1, "Incoming juice pH"],
  [Date.new(2018, 9, 14), 1, 2, "Incoming juice pH"],
  [Date.new(2018, 9, 28), 1, 3, "Incoming juice pH"],
  [Date.new(2018, 10, 2), 1, 4, "Incoming juice pH"],
  [Date.new(2018, 11, 7), 1, 5, "Incoming juice pH"],
  [Date.new(2018, 11, 14), 1, 6, "Incoming juice pH"],
  [Date.new(2018, 11, 28), 1, 7, "Incoming juice pH"],
  [Date.new(2018, 12, 5), 1, 8, "Incoming juice pH"]
]

appointments.each do |appointment|
  Appointment.create!(date: appointment[0], test_id: appointment[1], sample_id: appointment[2], description: appointment[3])
end

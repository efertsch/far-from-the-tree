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
  Test.create!(type: t[0], abbreviation: t[1], unit: t[2])
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
  Stage.create!(description: stage[0], location: stage[1], unit: stage[2])
end

# Users have a name, email, password
users = [
  ["Ethan F.", "efertsch@gmail.com", "password"]
]

users.each do |user|
  User.create!(name: user[0], email: user[1], password_digest: user[2])
end


# Pitches have a yeast_type, lees?, round
pitches = [
  ["Champagne", true, 1],
  ["VL-3", false, 0]
]

pitches.each do |pitch|
  Pitch.create!(yeast_type: pitch[0], lees?: pitch[1], round: pitch[2])
end

# Batches have a date_received and apple_composition
batches = [
  [Date.new(2018, 9, 1), "macintosh"],
  [Date.new(2018, 11, 1), "macintosh, cortland"]
]

batches.each do |batch|
  Batch.create!(date_received: batch[0], apple_composition: batch[1])
end

# Groups have a name
groups = [
  ["SG-1"],
  ["SG-2"]
]

groups.each do |group|
  Group.create!(name: group[0])
end


# Samples have a start_date, finish_date, tote_size, batch_id, group_id, stage_id, pitch_id
samples = [
  [Date.new(2018, 9, 1), 275, 1, 1, 1, 2],
  [Date.new(2018, 9, 1), 275, 1, 1, 1, 2],
  [Date.new(2018, 9, 1), 275, 1, 1, 1, 2],
  [Date.new(2018, 9, 1), 275, 1, 1, 1, 2],

  [Date.new(2018, 11, 1), 275, 2, 2, 1, 1],
  [Date.new(2018, 11, 1), 275, 2, 2, 1, 1],
  [Date.new(2018, 11, 1), 275, 2, 2, 1, 1],
  [Date.new(2018, 11, 1), 275, 2, 2, 1, 1]
]

samples.each do |sample|
  Sample.create!(start_date: sample[0], finish_date: sample[1], tote_size: sample[2], batch_id: sample[3], group_id: sample[4], stage_id: sample[5], pitch_id: sample[6])
end

# Additions have a chemical_name, amount, notes, unit, date, sample_id
additions = [
  ["PMS", "260" "g", Date.new(2018, 9, 1), "Initial SO2 dose", 1],
  ["PMS", "260" "g", Date.new(2018, 9, 1), "Initial SO2 dose", 2],
  ["PMS", "260" "g", Date.new(2018, 9, 1), "Initial SO2 dose", 3],
  ["PMS", "260" "g", Date.new(2018, 9, 1), "Initial SO2 dose", 4]
]

additions.each do |addition|
  Addition.create!(chemical_name: addition[0], amount: addition[1], unit: addition[2], date: addition[3], notes: addition[4], sample_id: addition[5])
end

# Experiments have a date, value, test_id, sample_id, notes
experiments = [
  [Date.new(2018, 9, 1), 4.0, 2, 1, "Higher than usual pH"],
  [Date.new(2018, 9, 1), 3.6, 2, 2, "Higher than usual pH"],
  [Date.new(2018, 9, 1), 3.8, 2, 3, "Higher than usual pH"],
  [Date.new(2018, 9, 1), 3.6, 2, 4, "Higher than usual pH"]
]

experiments.each do |experiment|
  Experiment.create!(date: experiment[0], value: experiment[1], test_id: experiment[2], sample_id: experiment[3], notes: experiment[4])
end

# Appointments have a date, test_id, sample_id, description
appointments = [
  [Date.new(2018, 9, 7), 1, 1, "Incoming juice pH"],
  [Date.new(2018, 9, 14), 1, 2, "Incoming juice pH"],
  [Date.new(2018, 9, 28), 1, 3, "Incoming juice pH"],
  [Date.new(2018, 10, 2), 1, 4, "Incoming juice pH"],
  [Date.new(2018, 11, 7), 1, 4, "Incoming juice pH"],
  [Date.new(2018, 11, 14), 1, 5, "Incoming juice pH"],
  [Date.new(2018, 11, 28), 1, 6, "Incoming juice pH"],
  [Date.new(2018, 12, 5), 1, 7, "Incoming juice pH"]
]

appointments.each do |appointment|
  Appointment.create!(date: appointment[0], test_id: appointment[1], sample_id: appointment[2], description: appointment[3])
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name: 'Administrator')
Role.create(name: 'Ordynator')
Role.create(name: 'Lekarz')
Role.create(name: 'Pielegnierka')

Department.create(name: 'Neurologia')
Department.create(name: 'Okulistyczny')

User.create(email: "mateuszbozek077@gmail.com", password: "haslo1",name: "Mateusz Bożek", department_id: 1, role_id: 2)
User.create(email: "aa@gmail.com", password: "haslo1",name: "Roman Borek", department_id: 1, role_id: 3)
User.create(email: "bb@gmail.com", password: "haslo1",name: "Michał Pol", department_id: 1, role_id: 4)
User.create(email: "cc@gmail.com", password: "haslo1",name: "Arek Kowalski", department_id: 2, role_id: 2)
User.create(email: "dd@gmail.com", password: "haslo1",name: "Oleg Kowal", department_id: 2, role_id: 3)
User.create(email: "ee@gmail.com", password: "haslo1",name: "Oskar Kowalewski", department_id: 2, role_id: 4)

Patient.create(name: "Jan", surename:"Kowalski", personal_identify_number: "12345678901", department_id: 1)
Patient.create(name: "Marek", surename:"Nowak", personal_identify_number: "23456789011", department_id: 2)
Patient.create(name: "Patryk", surename:"Wiśniewski", personal_identify_number: "34567890112", department_id: 1)
Patient.create(name: "Albert", surename:"Wójcik", personal_identify_number: "45678901123", department_id: 2)

Note.create(patient_id: 1, description: "Notatka numer 1")
Note.create(patient_id: 2, description: "Notatka numer 2")
Note.create(patient_id: 3, description: "Notatka numer 3")
Note.create(patient_id: 4, description: "Notatka numer 4")

Survey.create(patient_id: 1,systolic_blood_pressure: "120", diastolic_blood_pressure: "70", pulse: "77" , sugar_level: "70" , temperature:"36.6")
Survey.create(patient_id: 2,systolic_blood_pressure: "112", diastolic_blood_pressure: "75", pulse: "84" , sugar_level: "99" , temperature:"37.7")
Survey.create(patient_id: 3,systolic_blood_pressure: "127", diastolic_blood_pressure: "73", pulse: "67" , sugar_level: "80" , temperature:"38.1")
Survey.create(patient_id: 4,systolic_blood_pressure: "131", diastolic_blood_pressure: "80", pulse: "80" , sugar_level: "105" , temperature:"36.5")

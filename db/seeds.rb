# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

student1 = Student.create([first_name: 'Doug', last_name: 'Las'])
student2 = Student.create([first_name: 'Frank', last_name: 'E'])


class1 = SchoolClass.create([title: 'Math',room_number: '1'])
class2 = SchoolClass.create([title: 'Not Math',room_number: '2'])

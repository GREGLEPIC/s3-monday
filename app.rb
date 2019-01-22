# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;)
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc etc


# greg = User.new("greg@greg.com", "greg")
# rob = User.new("rob@greg.com", "rib")
# jiad= User.new("jiad@greg.com", "jiad")
# amadou = User.new("amadou@greg.com", "amadou")

# p User.self.find_by_email("greg@greg.com")

# p User.all

# foot = Event.new("2019-01-21 15:00", 2,"partouze", ["jean","kevin"])
# coiffeur = Event.new("2019-01-21 16:00", 2,"partouze", ["jean","kevin"])
# courses = Event.new("2019-01-21 17:00", 2,"partouze", ["jean","kevin"])

# p foot.to_s
# p courses.is_soon
# p courses.is_future
# p coiffeur.postpone_24h
# p coiffeur.end_date
User.new("julie@julie.com")
User.new("jean@jean.com")

julie = User.find_by_email("julie@julie.com")
jean = User.find_by_email("jean@jean.com")


e = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])
puts "Voici l'email du premier attendee de l'événement : #{e.attendees.first.email}"

#p Foo.all_offspring  # => [#<Foo:0x886d67c>, #<Foo:0x886d668>]




# User.new("julie@julie.com")
# User.new("jean@jean.com")

# julie = User.find_by_email("julie@julie.com")
# jean = User.find_by_email("jean@jean.com")

# e = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])
# puts "Voici l'email du premier attendee de l'événement : #{e.attendees.first.email}
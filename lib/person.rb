# your code goes here
class Person
 attr_reader :name
 attr_accessor :bank_account
 attr_reader :happiness, :hygiene

def initialize(name)
    ##Saving name to an instance variable so that we can access this name anywhere throughout our class
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

# Taken care of by attr_accessor :bank account
# def bank_account=(value)
#     @bank_account = value
# end
# def bank_account
#   @bank_account
# end

# Taken care of by attr_reader :happiness
# def happiness
#   @happiness
# end

def happiness=(value)
  if value.between?(0, 10)
    @happiness = value
  elsif value > 10
    @happiness = 10
  else value < 0
    @happiness = 0
  end

end

def hygiene=(value)
  if value.between?(0,10)
    @hygiene = value
  elsif value > 10
    @hygiene = 10
  else value < 0
    @hygiene = 0
  end
end

def clean?
self.hygiene > 7
end

def happy?
  self.happiness > 7
end

def get_paid(amount)
self.bank_account += amount
'all about the benjamins'
end

def take_bath
self.hygiene += 4
"♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness += 2
self.hygiene -= 3
"♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == 'politics'
     self.happiness -= 2
     friend.happiness -= 2
  "blah blah partisan blah lobbyist"
  elsif topic == 'weather'
     self.happiness += 1
     friend.happiness += 1
     "blah blah sun blah rain"
  else topic != 'weather' || 'politics'
    "blah blah blah blah blah"
  end
end

end
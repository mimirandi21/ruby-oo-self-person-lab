
class Person
    attr_accessor :bank_account
    attr_reader :happiness, :hygiene, :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(happiness)
        @happiness = happiness
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness > 10
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene > 10
    end

    def clean?
        hygiene > 7 ? true : false
    end

    def happy?
        happiness > 7 ? true : false
    end

    def get_paid(salary)
        self.bank_account = (@bank_account + salary)
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = (@hygiene +4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = (@hygiene -3)
        self.happiness = (@happiness +2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = (@happiness +3)
        friend.happiness = (friend.happiness + 3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
        
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = (@happiness -2)
            friend.happiness = (friend.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = (@happiness +1)
            friend.happiness = (friend.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end  
    end

end

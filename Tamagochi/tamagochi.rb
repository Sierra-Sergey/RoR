require './pet'

class Game
  def create_pet
    animals = %w[Cat Dog Lion Tiger Hamster]
    p 'Назовите Вашего питомца'
    name = gets.chomp
    if name.length < 3
      while name.length < 3
        p 'Имя должно состоять не менее чем из 3 симолов'
        name = gets.chomp
      end
    end
    @pet = Pet.new(animals.sample, name)
    puts "Появился #{@pet.animal} #{@pet.name}"
  end

  def start
    create_pet
    @pet.html
    @pet.help
    command = nil
    until command == 'exit'
      command = gets.chomp
      case command
      when 'feed'   then @pet.feed
      when 'sleep'  then @pet.sleep
      when 'play'   then @pet.play_with_pet
      when 'toilet' then @pet.toil
      when 'bath'   then @pet.bath
      when 'help'   then @pet.help
      when 'info'   then @pet.info
      end

      @pet.html
      @pet.response.clear

      exit if @pet.health <= 0
    end
  end
end

Game.new.start

# pet = Pet.new(animals.sample, name)

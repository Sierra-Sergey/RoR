class Pet
  def initialize(animal, name)
    @animal = animal
    @name = name
    @health = 100
    @bellyful = 100
    @peppiness = 100
    @mood = 100
    @purity = 100
    @toilet = 100
    @asleep = false

    puts "У Вас появился #{@animal} #{@name}"
  end

  def feed
    @eating = true
    @bellyful = 100
    p 'Вы покормили питомца'
    pass_of_time
    @eating = false
  end

  def sleep
    return p 'Питомец не хочет спать' if @peppiness > 75

    @asleep = true
    p 'Вы уложили питомца спать'
    3.times { pass_of_time if @asleep }
  end

  def play_with_pet
    @mood += 30
    p 'Вы поиграли со своим питомцем'
    pass_of_time
  end

  def toilet
    @defecation = true
    @toilet = 100
    p 'Вы сводили питомца в туалет'
    pass_of_time
    @defecation = false
  end

  def bath
    @bathing = true
    p 'Вы покупали своего питомца'
    @purity = 100
    pass_of_time
    @bathing = false
  end

  def help
    p 'Список возможных команд:'
    p 'feed --- покормить'
    p 'sleep --- уложить спать'
    p 'play --- поиграть'
    p 'toilet --- сводить в туалет'
    p 'bath --- покупать'
    p 'info --- получить информацию о показателях питомца'
    p 'exit --- выйти с программы'
    p 'help --- получить список возможных команд'
  end

  def info
    puts "Здоровье   --- #{@health}%"
    puts "Сытость    --- #{@bellyful}%"
    puts "Бодрость   --- #{@peppiness}%"
    puts "Настроение --- #{@mood}%"
    puts "Чистота    --- #{@purity}%"
    puts "Туалет     --- #{@toilet}%"
  end

  private

  def pass_of_time
    if @asleep
      @peppiness += 25
      if @peppiness >= 100
        @peppiness = 100
        @asleep = false
        p 'Питомец просыпается выспавшийся'
      end
    else
      @peppiness -= rand(5..15)
      @peppiness = 0 if @peppiness.negative?
      if @peppiness.zero?
        @health -= rand(5..15)
        @mood -= 5
        p 'От усталости Ваш питомец уснул на ходу и упал ударившись головой об пол'
        if @health <= 0
          p 'Ваш питомец умер от полученых травм'
          exit
        end
        @mood -= 10
      elsif @peppiness <= 30
        p 'Глаза начинают слипаться'
      end
    end

    unless @defecation
      @toilet -= 10
      if @toilet <= 0
        @mood -= 10
        @purity -= 20
        @toilet = 100
        p 'Упс, питомец обделался'
      elsif @toilet <= 30
        p 'Ой, кажется питомец хочет в туалет'
      end
    end

    unless @bathing
      @purity -= 5
      @purity = 0 if @purity.negative?
      if @purity.zero?
        @mood -= 10
        p 'Ваш питомец весь в грязи, помойте его скорее!!!'
      elsif @purity <= 20
        @mood -= 5
        p 'Жуть какой грязный, пора мыться'
      elsif @purity <= 50
        p 'Уфф, замазался немного'
      end
    end

    unless @eating
      @bellyful -= rand(5..15)
      @bellyful = 0 if @bellyful.negative?
      if @bellyful.zero?
        p 'Ваш питомец мучается от голода'
        @health -= 5
        if @health <= 0
          p 'Ваш питомец умер от голода'
          exit
        end
      elsif @bellyful <= 30
        @mood -= 5
        p 'В животе урчит'
      end
    end

    @mood = 100 if @mood > 100
    if @mood <= 0
      p 'Ваш питомец очень расстроен, он ушел из дома...'
      if rand(0..2).positive?
        @mood = 30
        p '...Но вернулся, спустя несколько часов'
      else
        p '...навсегда'
        exit
      end
    end

    return unless @health <= 0

    p 'Ваш питомец умер'
    exit
  end
end

animals = %w[Cat Dog Lion Tiger Hamster]

p 'Назовите Вашего питомца'
name = gets.chomp
if name.length < 3
  while name.length < 3
    p 'Введите имя, не меньше 3 символов'
    name = gets.chomp
  end
end

pet = Pet.new(animals.sample, name)
pet.help
command = nil
until command == 'exit'
  command = gets.chomp
  case command
  when 'feed'   then pet.feed
  when 'sleep'  then pet.sleep
  when 'play'   then pet.play_with_pet
  when 'toilet' then pet.toilet
  when 'bath'   then pet.bath
  when 'help'   then pet.help
  when 'info'   then pet.info
  end

end

##############################
# ОПРЕДЕЛЯЕМ ПЕРЕМЕННЫЕ
##############################

@humans = 10_000
@machines = 10_000


##############################
# ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ
##############################

# Метод возвращает случайное значение: true или false
def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)
  if luck?
    @machines -= diff
    puts "#{diff} машин уничтожено"
  else
    @humans -= diff
    puts "#{diff} людей погибло"
  end
end

def snap
  @machines = @machines / 2
  @humans = @humans / 2
  puts "В результате была уничтожена половина всех людей и машин."
end

def time
  diff = rand(5..10)
  if luck?
    @machines -= diff
    puts "#{diff} машин вышло из строя."
  else
    @humans -= diff
    puts "#{diff} людей умерло от старости."
  end
end

def  reborn
  if luck?
    diff = 10_000 - @machines
    @machines += diff
    puts "Было создано новых машин: #{diff}." if diff > 0
  else
    diff = 10_000 - @humans
    @humans += diff
    puts "Новых людей появилось: #{diff}." if diff > 0
  end
end

# Метод возвращает случайное название города
def random_city
  dice = rand(1..5)
  case dice
  when 1
    'Москва'
  when 2
    'Лос-Анджелес'
  when 3
    'Пекин'
  when 4
    'Лондон'
  else
    'Сеул'
  end
end

def random_sleep
  sleep rand(0.3..1.5)
end

def stats
  puts "Осталось #{@humans} людей и #{@machines} машин"
end


##############################
# СОБЫТИЯ
##############################

def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
end

def event2
  puts "Применено радиоактивное оружие в городе #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Группа солдат прорывает оборону противника в городе #{random_city}"
  random_sleep
  boom
end

def event4
  puts "Кто-то использовал Перчатку Бесконечности!"
  random_sleep
  snap
end

def event5
  puts "Время никого не щадит!"
  random_sleep
  time
end

def event6
  puts "Сегодня праздничный день. Стрельба стихла. Сегодня никто не умер."
  random_sleep
end


##############################
# ПРОВЕРКА ПОБЕДЫ
##############################

def check_victory?
  if @humans <= 0 || @machines <= 0
    true
  end
end


##############################
# ГЛАВНЫЙ ЦИКЛ
##############################

loop do
  if check_victory?
    if @humans <= 0
      puts "Поражение! Машины одержали верх!"
    elsif @machines <= 0
      puts "Победа! Человечество спасено!"
    end
    exit
  end

  dice = rand(1..6)

  case dice
  when 1
    event1
  when 2
    event2
  when 3
    event3
  when 4
    event4
  when 5
    event5
  when 6
    event6
  end

  random_sleep
  reborn

  stats
  random_sleep
end
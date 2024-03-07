class Funoes_Genericas

  def self.countdown(seconds)
    seconds.times do |i|
      print "\r-> WARN: Aguardando #{seconds - i} Segundos"
      sleep(1)
    end
    puts ''
  end

end

require 'fizzbuzz/version'

module FizzBuzz

  def self.start
    puts "First 20 fizzbuzz:"
    puts play(20).join("\n")
  end
  
  def self.play(stop_at=1,start_at=1)
    start_at.upto(stop_at).map do |i|
      if fizzbuzz(i)
        "fizzbuzz"
      elsif fizz(i)
        "fizz"
      elsif buzz(i)
        "buzz"
      else
        i
      end
    end
  end


  def self.fizz(n)
    n.modulo(3) == 0
  end

  def self.buzz(n)
    n.modulo(5) == 0
  end

  def self.fizzbuzz(n)
    fizz(n) && buzz(n)
  end

end

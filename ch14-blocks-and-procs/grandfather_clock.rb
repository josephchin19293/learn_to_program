def grandfather_clock &block
  hour = (Time.new.hour + 11)%12 + 1

  hour.times(&block)
end

grandfather_clock { puts 'DONG!' }

=begin
def grandfather_clock &block
  rn = Time.now
  start_today = Time.new(rn.year,rn.month,rn.day,0)
  (((rn - start_today)/(60*60)).to_i).times do
  	block.call
  end
end

grandfather_clock {puts "DONG!!!"}
=end
require "rubygems"
require "arduino_firmata"
 
arduino = ArduinoFirmata.connect
puts "================================="
puts "Arduino-Ruby running"
puts "> firmata version #{arduino.version}"
puts "================================="

loop do
  puts "red: BANG"
  arduino.digital_write 12, true
  sleep 0.5
  puts "red: UNBANG"
  arduino.digital_write 12, false
  sleep 0.25
  puts "yellow: BANG"
  arduino.digital_write 2, true
  sleep 0.125
  puts "yellow: UNBANG"
  arduino.digital_write 2, false
  sleep 0.75
end




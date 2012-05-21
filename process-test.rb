3.times do |i|
  pid = Process.fork
  if pid.nil? then
    # In child
    sleep 5
    puts "child #{pid} #{i}"
  else
    # In parent
    puts "parent #{pid}"
  end
end


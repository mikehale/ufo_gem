class UFO
  VERSION = '0.4.1'
  PASSWORD_CHARACTERS = ((' '[0]..'~'[0]).to_a.collect{|e| e.chr} - %w(' " \\))
  
  def self.generate_password
    r = ''
    10.times{r << PASSWORD_CHARACTERS.sort_by{rand}.first}
    r
  end
  
  def self.run(command)
    puts "Running `#{command}`"
    puts(r = `#{command}`)
    raise "Command failed." unless $? == 0
    r
  end
end
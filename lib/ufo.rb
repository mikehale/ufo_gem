class UFO
  VERSION = '1.0.0'
  PASSWORD_CHARACTERS = ((' '[0]..'~'[0]).to_a.collect{|e| e.chr} - %w(' " \\))
  
  def self.generate_password
    r = ''
    10.times{r << PASSWORD_CHARACTERS.sort_by{rand}.first}
    r
  end
  
  def self.run(command, message=nil)
    puts(message ? message : "Running `#{command}`")
    puts(r = `#{command}`)
    raise "Command failed." unless $? == 0
    r
  end
  
  def self.render(to, template, options={})
    raise "File already exists." if File.exist?(to)
    template_file = File.join(File.dirname(__FILE__), '../templates', template)
    erb = ERB.new(File.read(template_file), 0, '-')
    b = Proc.new { binding }.call
    options.each do |key, value|
      eval "#{key} = options[:#{key}]", b
    end
    File.open(to, 'w'){|f| f.write erb.result(b)}
  end
end
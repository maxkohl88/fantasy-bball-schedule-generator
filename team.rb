class Team

  attr_accessor :name, :division

  def initialize(name, options={})
    @name = name
    @division = options[:division]
  end

end

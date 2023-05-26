module ArchivesSpaceApiUtility

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  class Configuration
    attr_accessor :host, :port, :username, :password, :https

    def initialize
      @host = 'api.archivesspace.lib.ncsu.edu'
      @port = nil
      @username = 'YOUR USER NAME'
      @password = 'YOUR PASSWORD'
      @https = true
    end

  end

end

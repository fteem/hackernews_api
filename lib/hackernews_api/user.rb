module HackernewsApi
  class User
    def self.fetch id
      new(Client.fetch(:user, id))
    end

    attr_reader :id, :about, :created, :delay, :karma, :submitted

    def initialize json
      @id = json['id']
      @aobut = json['about']
      @create = json['created']
      @delay = json['delay']
      @karma = json['karma']
      @submitted = json['submitted']
    end

  end
end

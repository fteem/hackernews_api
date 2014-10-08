module HackernewsApi
  class Story
    def self.fetch id
      json = Client.fetch(:item, id)
      new(json)
    end

    attr_reader :id, :by, :kids, :score, :time, :title, :type, :url

    def initialize json
      @id     = json['id']
      @by     = json['by']
      @kids   = json['kids']
      @score  = json['score']
      @time   = DateTime.strptime(json['time'].to_s, '%s')
      @title  = json['title']
      @type   = json['type']
      @url    = json['url']
    end
  end
end

module HackernewsApi
  class PollOpt
    def self.fetch id
      json = Client.fetch(:item, id)
      new(json)
    end

    attr_reader :id, :by, :parent, :score, :time, :type, :text

    def initialize json
      @id     = json['id']
      @by     = json['by']
      @time   = DateTime.strptime(json['time'].to_s, '%s')
      @type   = json['type']
      @parent = json['parent']
      @text = json['text']
    end
  end
end

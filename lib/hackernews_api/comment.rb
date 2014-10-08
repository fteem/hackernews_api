module HackernewsApi
  class Comment
    def self.fetch id
      json = Client.fetch(:item, id)
      new(json)
    end

    attr_reader :id, :by, :kids, :time, :type, :parent, :text

    def initialize json
      @id     = json['id']
      @by     = json['by']
      @kids   = json['kids']
      @time   = DateTime.strptime(json['time'].to_s, '%s')
      @type   = json['type']
      @parent = json['parent']
      @text = json['text']
    end
  end
end

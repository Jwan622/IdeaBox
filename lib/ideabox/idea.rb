class Idea

    attr_accessor :id

    def initialize(title, desc)
      @likes = 0
      @title = title
      @desc = desc
    end

    def title
      @title
    end

    def description
      @desc
    end

    def likes
      @likes
    end

    def like!
      @likes += 1
    end

    def <=>(next_object)
      likes <=> next_object.likes
      #ask about this
    end

end

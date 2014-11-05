class IdeaStore

  def self.save(idea) #idea is an object here
    @all ||= []
    idea.id = next_id
    @all << idea
    #interesting so the idea objects gets pushed into the @all array, and
    # then the object gets an id that is = count + 1. It gets pushed, then
    #id'ed. Very neat. 
    idea.id
  end

  def self.count
    @all.count
  end

  def self.next_id
    count+1
  end

  def self.find(id)
    @all.find do |idea|
      idea.id == id
    end
  end

  def title

  end
end

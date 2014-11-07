require './lib/ideabox/idea'  # => true
require './lib/ideabox/idea_store'         # ~> LoadError: cannot load such file -- ./lib/ideabox/idea_store
require './test/idea_test'

class IdeaStoreTest < Minitest::Test
  def test_save_and_retrieve_an_idea
    idea = Idea.new("celebrate", "with champagne")
    id = IdeaStore.save(idea)
    assert_equal 1, IdeaStore.count
    idea = IdeaStore.find(id)
    assert_equal "celebrate", idea.title
    assert_equal "with champagne", idea.description
  end

  def test_save_and_retrieve_multiple_ideas
    idea1 = Idea.new("celebrate", "with champagne")
    id1 = IdeaStore.save(idea1)

    assert_equal 1, IdeaStore.count

    idea2 = Idea.new("dream", "of unicorns and rainbows")
    id2 = IdeaStore.save(idea2)

    assert_equal 2, IdeaStore.count

    found_idea1 = IdeaStore.find(id1)
    assert_equal "celebrate", found_idea1.title
    assert_equal "with champagne", found_idea1.description

    found_idea2 = IdeaStore.find(id2)
    assert_equal "dream", found_idea2.title
    assert_equal "of unicorns and rainbows", found_idea2.description
  end
end

# ~> LoadError
# ~> cannot load such file -- ./lib/ideabox/idea_store
# ~>
# ~> /Users/Jwan/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/Jwan/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/Jwan/Dropbox/Turing/IdeaBox/test/ideabox/idea_store_test.rb:2:in `<main>'

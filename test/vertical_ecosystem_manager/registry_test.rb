# frozen_string_literal: true

require_relative "../test_helper"

class VerticalEcosystemManager::RegistryTest < Minitest::Test
  def setup
    @registry = VerticalEcosystemManager::Registry.new
    @vertical = VerticalEcosystemManager::Vertical.new(
      slug: "test",
      name: "Test",
      description: "A test vertical",
      icon: "test-icon",
      categories: [
        VerticalEcosystemManager::Category.new(
          slug: "test_cat",
          name: "Test Category",
          description: "A test category",
          vertical_slug: "test",
          rayswarm_mappings: [
            VerticalEcosystemManager::RayswarmMapping.new(
              gem_name: "rayswarm-test",
              category_slug: "test_cat",
              vertical_slug: "test",
              description: "A test mapping"
            ),
          ]
        ),
      ]
    )
  end

  def test_register_and_find
    @registry.register(@vertical)
    assert_equal @vertical, @registry.find("test")
  end

  def test_all_returns_registered_verticals
    @registry.register(@vertical)
    assert_equal [@vertical], @registry.all
  end

  def test_slugs_returns_registered_slugs
    @registry.register(@vertical)
    assert_equal ["test"], @registry.slugs
  end

  def test_categories_returns_all_categories
    @registry.register(@vertical)
    cats = @registry.categories
    assert_equal 1, cats.size
    assert_equal "test_cat", cats.first.slug
  end

  def test_rayswarm_gems_returns_all_mappings
    @registry.register(@vertical)
    gems = @registry.rayswarm_gems
    assert_equal 1, gems.size
    assert_equal "rayswarm-test", gems.first.gem_name
  end

  def test_find_raises_key_error_for_missing_slug
    error = assert_raises(KeyError) { @registry.find("missing") }
    assert_match(/Unknown vertical/, error.message)
  end
end

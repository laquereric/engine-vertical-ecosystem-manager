# frozen_string_literal: true

require_relative "../test_helper"

class VerticalEcosystemManager::VerticalsTest < Minitest::Test
  def test_all_returns_seven_verticals
    assert_equal 7, VerticalEcosystemManager.all.size
  end

  def test_slugs_returns_all_vertical_slugs
    expected = %w[finance healthcare energy industrial consumer demographic academic]
    assert_equal expected, VerticalEcosystemManager.slugs
  end

  def test_find_returns_vertical_by_slug
    finance = VerticalEcosystemManager.find("finance")
    assert_instance_of VerticalEcosystemManager::Vertical, finance
    assert_equal "finance", finance.slug
    assert_equal "Finance", finance.name
  end

  def test_find_raises_on_unknown_slug
    assert_raises(KeyError) { VerticalEcosystemManager.find("nonexistent") }
  end

  def test_categories_returns_42_categories
    assert_equal 42, VerticalEcosystemManager.categories.size
  end

  def test_each_vertical_has_six_categories
    VerticalEcosystemManager.all.each do |vert|
      assert_equal 6, vert.categories.size, "#{vert.slug} should have 6 categories"
    end
  end

  def test_verticals_are_frozen
    VerticalEcosystemManager.all.each do |vert|
      assert vert.frozen?, "#{vert.slug} should be frozen"
    end
  end

  def test_categories_are_frozen
    VerticalEcosystemManager.categories.each do |cat|
      assert cat.frozen?, "#{cat.slug} should be frozen"
    end
  end

  def test_vertical_to_h
    finance = VerticalEcosystemManager.find("finance")
    hash = finance.to_h
    assert_equal "finance", hash[:slug]
    assert_equal "Finance", hash[:name]
    assert_kind_of Array, hash[:ontology_standards]
    assert_kind_of Array, hash[:categories]
  end

  def test_each_vertical_has_ontology_standards
    VerticalEcosystemManager.all.each do |vert|
      assert vert.ontology_standards.size >= 1, "#{vert.slug} should have at least 1 ontology standard"
    end
  end

  def test_version
    assert_match(/\A\d+\.\d+\.\d+\z/, VerticalEcosystemManager::VERSION)
  end
end

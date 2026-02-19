# frozen_string_literal: true

require_relative "../test_helper"

class EngineVerticalEcosystemManager::RayswarmMappingTest < Minitest::Test
  def test_rayswarm_gems_returns_42_mappings
    assert_equal 42, EngineVerticalEcosystemManager.rayswarm_gems.size
  end

  def test_all_gem_names_are_unique
    names = EngineVerticalEcosystemManager.rayswarm_gems.map(&:gem_name)
    assert_equal names.uniq.size, names.size, "Duplicate gem names found: #{names.group_by(&:itself).select { |_, v| v.size > 1 }.keys}"
  end

  def test_all_gem_names_start_with_rayswarm
    EngineVerticalEcosystemManager.rayswarm_gems.each do |mapping|
      assert mapping.gem_name.start_with?("rayswarm-"), "#{mapping.gem_name} should start with rayswarm-"
    end
  end

  def test_mapping_vertical_slug_matches_parent
    EngineVerticalEcosystemManager.all.each do |vert|
      vert.categories.each do |cat|
        cat.rayswarm_mappings.each do |mapping|
          assert_equal vert.slug, mapping.vertical_slug,
            "#{mapping.gem_name} vertical_slug should be #{vert.slug}"
          assert_equal cat.slug, mapping.category_slug,
            "#{mapping.gem_name} category_slug should be #{cat.slug}"
        end
      end
    end
  end

  def test_mapping_to_h
    mapping = EngineVerticalEcosystemManager.rayswarm_gems.first
    hash = mapping.to_h
    assert_kind_of Hash, hash
    assert hash.key?(:gem_name)
    assert hash.key?(:category_slug)
    assert hash.key?(:vertical_slug)
    assert hash.key?(:description)
  end

  def test_finance_has_expected_gems
    finance = EngineVerticalEcosystemManager.find("finance")
    gem_names = finance.categories.flat_map(&:rayswarm_mappings).map(&:gem_name).sort
    expected = %w[
      rayswarm-algorithmic-trading
      rayswarm-financial-risk
      rayswarm-fraud-detection
      rayswarm-insurance-claims
      rayswarm-kyc-aml-compliance
      rayswarm-wealth-advisory
    ].sort
    assert_equal expected, gem_names
  end
end

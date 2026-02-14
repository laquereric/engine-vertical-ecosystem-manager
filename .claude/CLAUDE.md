# Vertical Ecosystem Manager — Agent Context

## Project Purpose

Ruby gem (vertical-ecosystem-manager) providing the master registry of 42 market verticals across 7 categories, each with its own domain engine gem.

## Architecture Overview

- Pure Ruby gem with module namespace: VerticalEcosystemManager
- Value objects: Vertical, Category, OntologyStandard, RayswarmMapping
- Registry pattern for vertical lookup
- Seed helper for database population

## Core Classes

| Class | File | Role |
|-------|------|------|
| VerticalEcosystemManager::Registry | lib/vertical_ecosystem_manager/registry.rb | Central registry |
| VerticalEcosystemManager::Vertical | lib/vertical_ecosystem_manager/vertical.rb | Vertical value object |
| VerticalEcosystemManager::Category | lib/vertical_ecosystem_manager/category.rb | Category value object |
| VerticalEcosystemManager::SeedHelper | lib/vertical_ecosystem_manager/seed_helper.rb | DB seed helper |

## Directory Layout

```
lib/vertical_ecosystem_manager/  # Core gem code (registry, value objects)
verticals/                       # 7 vertical data files (finance, healthcare, etc.)
test/                            # Minitest suite
```

## Development Commands

```bash
bundle install              # Install deps
bundle exec rake test       # Run all tests
```

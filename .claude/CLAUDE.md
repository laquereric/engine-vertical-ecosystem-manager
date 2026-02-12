# Magentic Market Verticals

Composite gem (Layer 2.5) providing the master registry of 42 market verticals across 7 categories, each with its own domain engine gem.

## Key Components

- **Registry** — Central registry of all 42 verticals with metadata
- **Value Objects** — Vertical, Category, OntologyStandard, RayswarmMapping
- **Seed Helper** — Database population helper for host applications
- **42 Domain Engine Gems** — Individual Rails engine gems per vertical

## 7 Categories (6 verticals each)

| Category | Verticals |
|----------|-----------|
| **Finance** | Algorithmic Trading, Financial Risk, KYC/AML Compliance, Insurance Claims, Wealth Advisory, Fraud Detection |
| **Healthcare** | Clinical Decisions, Medical Imaging, Healthcare Claims, Drug Discovery, Patient Engagement, Population Health |
| **Energy** | Subsurface Exploration, Reservoir Optimization, Grid Management, Renewable Forecasting, Energy Assets, Commodity Futures |
| **Industrial** | Predictive Quality, Production Scheduling, Supply Chain, Industrial Robotics, Digital Twin, Equipment Health |
| **Consumer** | Personalization, Dynamic Pricing, Inventory Optimization, Customer Analytics, Retail Execution, Ad Optimization |
| **Demographic** | Census Analysis, Economic Forecasting, Social Programs, Public Health, Policy Simulation, Survey Analysis |
| **Academic** | Research Discovery, Adaptive Learning, Student Success, Curriculum Mapping, Library Services, Institutional Analytics |

## Structure

- `lib/magentic_market/verticals/` — Main gem (registry, value objects, seed helper)
- `verticals/rayswarm-*/` — 42 individual domain engine gems (each with README, CLAUDE.md, Gemfile, VERSION, routes.rb)

## Ontology Standards per Category

- **Finance**: FIBO, ACORD
- **Healthcare**: HL7 FHIR, SNOMED
- **Energy**: OSDU, CIM
- **Industrial**: ISA-95, IOF
- **Consumer**: GS1
- **Demographic**: Schema.org
- **Academic**: VIVO, 1EdTech

## Ontology

- **File**: `ontology.rdf`
- **Namespace**: `http://www.semanticweb.org/ericlaquer/ontologies/2026/1/magentic/market-verticals/`
- **Type**: `DomainRegistry` (Layer 2.5)
- **Components**: VerticalRegistry, 7 CategoryGroups
- **Depends on**: rayswarm-core, rayswarm-scoping

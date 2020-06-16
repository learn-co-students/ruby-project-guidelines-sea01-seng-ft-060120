County.destroy_all
Watch.destroy_all
User_Id.destroy_all
Phase.destroy_all

#creation of county fillers and hard-assigned phase (to be replaced with web scraper for phase updating)
king   = County.create(
  name: "King",
  phase: "Modified Phase 1")

pierce = County.create(
  name: "Pierce", 
  phase: "Phase 2")

snohomish = County.create(
  name: "Snohomish", 
  phase: "Phase 2")

island = County.create(
  name: "Island", 
  phase: "Phase 2")

kitsap = County.create(
  name: "Kitsap",
  phase: "Phase 2")

#creation of phase fillers
phase1 = Phase.create(
  name: "Phase 1",
  description: "High-Risk Populations: Continue to Stay Home, Stay Healthy /n
                Recreation: Some outdoor recreation (hunting, fishing, golf, boating, hiking)
                Gatherings: 
                  - None (social) 
                  - Drive-in spiritual service with one household per vehicle (spiritual)
                Travel: Essential travel and limited non-essential travel for Phase 1 permissible activities
                Business/Employers: 
                  - Essential businesses open
                  - Existing construction that meets agreed upon criteria
                  - Landscaping
                  - Auto/RV/boat/ORV sales
                  - Retail (curb-side pick-up orders only)
                  - Car washes
                  - Pet walkers")

phasemodified1 = Phase.create(
  name: "Modified Phase 1",
  description: "High-Risk Populations:
                Recreation:
                Gatherings:
                Travel:
                Business/Employers:
                ")

phase2 = Phase.create(
  name: "Phase 2",
  description: "High-Risk Populations: Continue to Stay Home, Stay Healthy
                Recreation: Outdoor recreation involving 5 or fewer people outside your household (camping, beaches, etc.)
                Gatherings: Gather with no more than 5 people outside your household per week 
                Travel: Essential travel and limited non-essential travel for Phase I & II permissible activities
                Business/Employers: 
                  - Remaining manufacturing
                  - Additional construction phases
                  - In-home/domestic services (nannies, housecleaning, etc.)
                  - Retail (in-store purchases allowed with restrictions)
                  - Real estate
                  - Professional services/office-based businesses (telework remains strongly encouraged)
                  - Hair and nail salons/barbers
                  - Pet grooming
                  - Restaurants/taverns <50% capacity table size no larger than 5 (no bar-area seating)")

phase3 = Phase.create(
  name: "Phase 3",
  description: "High-Risk Populations: Continue to Stay Home, Stay Healthy
                Recreation: 
                  - Outdoor group rec. sports activities (50 or fewer people)
                  - Recreational facilities at <50% capacity (gyms, public pools, etc.)
                  - Professional sports without audience participation (horseracing, baseball, etc.)
                Gatherings: Allow gatherings with no more than 50 people
                Travel: Resume non-essential travel
                Business/Employers:
                  - Restaurants/taverns <75% capacity/table size no larger than 10
                  - Bar areas in restaurant/taverns at <25% capacity
                  - Movie theaters at <50% capacity
                  - Customer-facing government services (telework remains strongly encouraged)
                  - Libraries
                  - Museums
                  - All other business activities not yet listed except for nightclubs and events with >50 people")

phase4 = Phase.create(
  name: "Phase 4",
  description: "High-Risk Populations: Resume public interactions, with physical distancing
                Recreation: Resume all recreational activity
                Gatherings: Allow gatherings with >50 people
                Travel: Continue non-essential travel
                Business/Employers:
                  - Nightclubs
                  - Concert venues
                  - Large sporting events
                  - Resume unrestricted stang of worksites, but continue to practice physical distancing and good hygiene")
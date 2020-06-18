County.destroy_all
SingleWatch.destroy_all
User.destroy_all
Phase.destroy_all

#creation of phase fillers
phase1 = Phase.create(
  phase_name: "Phase 1",
  phase_description: "High-Risk Populations: Continue to Stay Home, Stay Healthy\n
                Recreation: Some outdoor recreation (hunting, fishing, golf, boating, hiking)\n
                Gatherings: 
                  - None (social) 
                  - Drive-in spiritual service with one household per vehicle (spiritual)\n
                Travel: Essential travel and limited non-essential travel for Phase 1 permissible activities\n
                Business/Employers: 
                  - Essential businesses open
                  - Existing construction that meets agreed upon criteria
                  - Landscaping
                  - Auto/RV/boat/ORV sales
                  - Retail (curb-side pick-up orders only)
                  - Car washes
                  - Pet walkers")

phasemodified1 = Phase.create(
  phase_name: "Modified Phase 1",
  phase_description: "High-Risk Populations:
                Recreation:
                Gatherings:
                Travel:
                Business/Employers:
                ")

phase2 = Phase.create(
  phase_name: "Phase 2",
  phase_description: "High-Risk Populations: Continue to Stay Home, Stay Healthy\n
                Recreation: Outdoor recreation involving 5 or fewer people outside your household (camping, beaches, etc.)\n
                Gatherings: Gather with no more than 5 people outside your household per week\n
                Travel: Essential travel and limited non-essential travel for Phase I & II permissible activities\n
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
  phase_name: "Phase 3",
  phase_description: "High-Risk Populations: Continue to Stay Home, Stay Healthy\n
                Recreation: 
                  - Outdoor group rec. sports activities (50 or fewer people)
                  - Recreational facilities at <50% capacity (gyms, public pools, etc.)
                  - Professional sports without audience participation (horseracing, baseball, etc.)\n
                Gatherings: Allow gatherings with no more than 50 people\n
                Travel: Resume non-essential travel\n
                Business/Employers:
                  - Restaurants/taverns <75% capacity/table size no larger than 10
                  - Bar areas in restaurant/taverns at <25% capacity
                  - Movie theaters at <50% capacity
                  - Customer-facing government services (telework remains strongly encouraged)
                  - Libraries
                  - Museums
                  - All other business activities not yet listed except for nightclubs and events with >50 people"
)

phase4 = Phase.create(
  phase_name: "Phase 4",
  phase_description: "High-Risk Populations: Resume public interactions, with physical distancing\n
                Recreation: Resume all recreational activity\n
                Gatherings: Allow gatherings with >50 people\n
                Travel: Continue non-essential travel\n
                Business/Employers:
                  - Nightclubs
                  - Concert venues
                  - Large sporting events
                  - Resume unrestricted stang of worksites, but continue to practice physical distancing and good hygiene"
)

#creation of county fillers and hard-assigned phase (to be replaced with web scraper for phase updating
king  = County.create(county_name: "King", phase_id: phasemodified1.id)
pierce = County.create(county_name: "Pierce", phase_id: phase2.id)
snohomish = County.create(county_name: "Snohomish", phase_id: phase2.id)
island = County.create(county_name: "Island", phase_id: phase2.id)
kitsap = County.create(county_name: "Kitsap", phase_id: phase2.id)
snohomish = County.create(county_name: "Snohomish" phase_id: phase2.id)
spokane = County.create(county_name: "Spokane", phase_id: phase2.id)
clark = County.create(county_name: "Clark", phase_id: phase2.id)
thurston = County.create(county_name: "Thurston", phase_id: phase2.id)
yakima = County.create(county_name: "Yakima", phase_id: phase1.id)
whatcom = County.create(county_name: "Watcom", phase_id: phase2.id)
benton = County.create(county_name: "Benton", phase_id: phase1.id)
skagit = County.create(county_name: "Skagit", phase_id: phase2.id)
cowlitz = County.create(county_name: "Cowlitz", phase_id: phase2.id)
grant = County.create(county_name: "Grant", phase_id: phase2.id)
franklin = County.create(county_name: "Franklin", phase_id: phase1.id)
lewis = County.create(county_name: "Lewis", phase_id: phase2.id)
clallam = County.create(county_name: "clallam", phase_id: phase2.id)
cowlitz = County.create(county_name: "Cowlitz", phase_id: phase2.id)





(King Pierce Snohomish Spokane Clark Thurston Kitsap Yakima Whatcome Benton Skagit Cowlitz Grant Franklin Island Lewis Clallam Chelan Grays Harbor Mason Walla\ Walla Whitman Kittitas Stevens Douglas Okanogan Jefferson Asotin Klickitat Pacific Adams San Juan Pend Oreille Skamania Lincoln Ferry Wahkiakum Columbia Garfield), per_page: 40, cycle: true, filter: true)










#user
gabriel = User.create(user_name: "Gabriel")

# #watchlist
# current_list = WatchList.create("king", "phase")



# create_table "watch_lists", id: false, force: :cascade do |t|
#   t.integer "county_id", null: false
#   t.integer "user_id", null: false
# end

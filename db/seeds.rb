County.destroy_all
SingleWatch.destroy_all
User.destroy_all
Phase.destroy_all

#creation of phase fillers
phase1 = Phase.create(
  phase_name: "Phase 1",
  phase_description: "\n
                High-Risk Populations: Continue to Stay Home, Stay Healthy\n
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
  phase_description: "\n
                High-Risk Populations: Continue to Stay Home, Stay Healthy\n
                Recreation: 
                - All activities may operate subject to Phase 2 guidance.
                - Limited practices for outdoor youth and adult recreation teams:
                    - Players are limited to groups of five in separate parts of the field, separated by a buffer zone. 
                    - Practice must follow social distancing of a minimum of five feet between players, with no contact.  
                    - Each league, organization, or club must publish and follow a “return to play” safety plan. 
                    - Parents and household members must not congregate on the sidelines during practice.\n
                Gatherings: Only allowed outdoors with five or fewer people outside the household.\n
                Travel: Essential travel and limited non-essential travel for Phase I & Mod I permissible activities\n
                Business/Employers:
                - All activities may operate according to Phase 2 guidance with the following exceptions:
                    - In-Store retail: at no time may an establishment's occupancy be higher than 15% and indoor services are limited to 30 minutes.
                    - Real Estate/Personal Services/Professional Services: at no time may the number of customers be more than 25% the number capable of being served at any one time.
                    - Restaurants: all table and chairs sets must maintain 6 feet of distance; outdoor seating capacity at 50%; indoor at 25%\n
                *note*: Those listed are for King County - your county may differ, as individual county policy changes are at the discretion of the Washington Department of Health.\n
                **note**: Detailed (unclear) information can be found at https://kingcounty.gov/depts/health/covid-19/safe-start.aspx
                ")

phase2 = Phase.create(
  phase_name: "Phase 2",
  phase_description: "\n
                High-Risk Populations: Continue to Stay Home, Stay Healthy\n
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
  phase_description: "\n
                High-Risk Populations: Continue to Stay Home, Stay Healthy\n
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
  phase_description: "\n
                High-Risk Populations: Resume public interactions, with physical distancing\n
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
king = County.create(county_name: "King", phase_id: phasemodified1.id)
pierce = County.create(county_name: "Pierce", phase_id: phase2.id)
snohomish = County.create(county_name: "Snohomish", phase_id: phase2.id)
island = County.create(county_name: "Island", phase_id: phase2.id)
kitsap = County.create(county_name: "Kitsap", phase_id: phase2.id)
spokane = County.create(county_name: "Spokane", phase_id: phase2.id)
clark = County.create(county_name: "Clark", phase_id: phase2.id)
thurston = County.create(county_name: "Thurston", phase_id: phase2.id)
yakima = County.create(county_name: "Yakima", phase_id: phase1.id)
whatcom = County.create(county_name: "Whatcom", phase_id: phase2.id)
benton = County.create(county_name: "Benton", phase_id: phase1.id)
skagit = County.create(county_name: "Skagit", phase_id: phase2.id)
cowlitz = County.create(county_name: "Cowlitz", phase_id: phase2.id)
grant = County.create(county_name: "Grant", phase_id: phase2.id)
franklin = County.create(county_name: "Franklin", phase_id: phase1.id)
lewis = County.create(county_name: "Lewis", phase_id: phase2.id)
clallam = County.create(county_name: "Clallam", phase_id: phase2.id)
cowlitz = County.create(county_name: "Cowlitz", phase_id: phase2.id)
grant = County.create(county_name: "Grant", phase_id: phase2.id)
franklin = County.create(county_name: "Franklin", phase_id: phase1.id)
lewis = County.create(county_name: "Lewis", phase_id: phase2.id)
clallam = County.create(county_name: "Clallam", phase_id: phase2.id)
cowlitz = County.create(county_name: "Cowlitz", phase_id: phase2.id)
chelan = County.create(county_name: "Chelan", phase_id: phasemodified1.id)
grays_harbor = County.create(county_name: "Grays Harbor", phase_id: phase3.id)
mason = County.create(county_name: "Mason", phase_id: phase2.id)
walla_walla = County.create(county_name: "Walla Walla", phase_id: phase2.id)
whitman = County.create(county_name: "Whitman", phase_id: phase3.id)
kittitas = County.create(county_name: "Kittitas", phase_id: phase2.id)
stevens = County.create(county_name: "Stevens", phase_id: phase3.id)
douglas = County.create(county_name: "Douglas", phase_id: phase1.id)
okanogan = County.create(county_name: "Okanogan", phase_id: phase2.id)
jefferson = County.create(county_name: "Jefferson", phase_id: phase2.id)
asotin = County.create(county_name: "Asotin", phase_id: phase3.id)
klickitat = County.create(county_name: "Klickitat", phase_id: phase2.id)
pacific = County.create(county_name: "Pacific", phase_id: phase3.id)
adams = County.create(county_name: "Adams", phase_id: phase2.id)
san_juan = County.create(county_name: "San Juan", phase_id: phase2.id)
pend_oreille = County.create(county_name: "Pend Oreille", phase_id: phase3.id)
skamania = County.create(county_name: "Skamania", phase_id: phase3.id)
lincoln = County.create(county_name: "Lincoln", phase_id: phase3.id)
ferry = County.create(county_name: "Ferry", phase_id: phase3.id)
wahkiakum = County.create(county_name: "Wahkiakum", phase_id: phase3.id)
columbia = County.create(county_name: "Columbia", phase_id: phase3.id)
garfield = County.create(county_name: "Garfield", phase_id: phase3.id)
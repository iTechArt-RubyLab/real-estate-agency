cities = City.create!([{name: I18n.t('city.name_1'), locality_size: I18n.t('city.locality_size.ls_3'), region: I18n.t('city.region.region_2'), description: I18n.t('city.description.d_1')}, 
                      {name: I18n.t('city.name_2'), locality_size: I18n.t('city.locality_size.ls_4'), region: I18n.t('city.region.region_3'), description: I18n.t('city.description.d_2')}, 
                      {name: I18n.t('city.name_3'), locality_size: I18n.t('city.locality_size.ls_4'), region: I18n.t('city.region.region_5'), description: I18n.t('city.description.d_3')},
                      {name: I18n.t('city.name_4'), locality_size: I18n.t('city.locality_size.ls_4'), region: I18n.t('city.region.region_6'), description: I18n.t('city.description.d_4')}, 
                      {name: I18n.t('city.name_5'), locality_size: I18n.t('city.locality_size.ls_4'), region: I18n.t('city.region.region_1'), description: I18n.t('city.description.d_5')}, 
                      {name: I18n.t('city.name_6'), locality_size: I18n.t('city.locality_size.ls_4'), region: I18n.t('city.region.region_7'), description: I18n.t('city.description.d_6')},
                      {name: I18n.t('city.name_7'), locality_size: I18n.t('city.locality_size.ls_4'), region: I18n.t('city.region.region_4'), description: I18n.t('city.description.d_7')}, 
                      {name: I18n.t('city.name_8'), locality_size: I18n.t('city.locality_size.ls_3'), region: I18n.t('city.region.region_3'), description: I18n.t('city.description.d_8')}, 
                      {name: I18n.t('city.name_9'), locality_size: I18n.t('city.locality_size.ls_3'), region: I18n.t('city.region.region_3'), description: I18n.t('city.description.d_9')},
                      {name: I18n.t('city.name_10'), locality_size: I18n.t('city.locality_size.ls_3'), region: I18n.t('city.region.region_6'), description: I18n.t('city.description.d_10')}, 
                      {name: I18n.t('city.name_11'), locality_size: I18n.t('city.locality_size.ls_3'), region: I18n.t('city.region.region_5'), description: I18n.t('city.description.d_11')}, 
                      {name: I18n.t('city.name_12'), locality_size: I18n.t('city.locality_size.ls_3'), region: I18n.t('city.region.region_2'), description: I18n.t('city.description.d_12')}])

districts = District.create!([{name: I18n.t('district.name_1'), city: cities[5]}, 
                             {name: I18n.t('district.name_2'), city: cities[5]}, 
                             {name: I18n.t('district.name_3'), city: cities[5]}, 
                             {name: I18n.t('district.name_4'), city: cities[5]}, 
                             {name: I18n.t('district.name_5'), city: cities[5]}, 
                             {name: I18n.t('district.name_6'), city: cities[5]},
                             {name: I18n.t('district.name_7'), city: cities[5]}, 
                             {name: I18n.t('district.name_8'), city: cities[5]}, 
                             {name: I18n.t('district.name_9'), city: cities[5]}, 
                             {name: I18n.t('district.name_10'), city: cities.second},
                             {name: I18n.t('district.name_11'), city: cities[4]}, 
                             {name: I18n.t('district.name_12'), city: cities[3]}, 
                             {name: I18n.t('district.name_13'), city: cities[3]}, 
                             {name: I18n.t('district.name_14'), city: cities[7]}])

streets = Street.create!([{name: I18n.t('street.name_1'), district: districts.first}, 
                         {name: I18n.t('street.name_2'), district: districts.first}, 
                         {name: I18n.t('street.name_3'), district: districts.first}, 
                         {name: I18n.t('street.name_4'), district: districts[10]}, 
                         {name: I18n.t('street.name_5'), district: districts[13]}, 
                         {name: I18n.t('street.name_6'), district: districts[11]},
                         {name: I18n.t('street.name_7'), district: districts[12]}, 
                         {name: I18n.t('street.name_8'), district: districts[3]}, 
                         {name: I18n.t('street.name_9'), district: districts[5]}, 
                         {name: I18n.t('street.name_10'), district: districts.second},
                         {name: I18n.t('street.name_11'), district: districts[9]}, 
                         {name: I18n.t('street.name_12'), district: districts[13]}, 
                         {name: I18n.t('street.name_13'), district: districts[10]}, 
                         {name: I18n.t('street.name_14'), district: districts[13]}])

commercial_premises_kinds = CommercialPremisesKind.create!([{name: 'Cafe'}, 
                                                           {name: 'Office'}, 
                                                           {name: 'Boutique'}, 
                                                           {name: 'Bank'}, 
                                                           {name: 'Salon'}, 
                                                           {name: 'Bar'}])

country_side_house_kinds = CountrySideHouseKind.create!([{name: 'Cottage'}, 
                                                        {name: 'House'}, 
                                                        {name: 'Townhouse'}, 
                                                        {name: 'Plot'}, 
                                                        {name: 'Summer cottage'}, 
                                                        {name: 'Penthouse'}])

ready_states = ReadyState.create!([{name: 'Ready'}, 
                                  {name: 'Under construction'}, 
                                  {name: 'Suspended'},
                                  {name: 'Restored'},
                                  {name: 'Not started'}])

wall_materials = WallMaterial.create!([{name: 'Brick'}, 
                                      {name: 'Blocky'}, 
                                      {name: 'Panel'}, 
                                      {name: 'Slag concrete'}, 
                                      {name: 'Tree'}, 
                                      {name: 'Frame wooden'},
                                      {name: 'Monolithic'},
                                      {name: 'Silicate blocks'},
                                      {name: 'Frame block'}])

renovations = Renovation.create!([{name: 'Euro renovation'},
                                 {name: 'Satisfactory repair'},
                                 {name: 'Construction finishing'},
                                 {name: 'Excellent renovation'},
                                 {name: 'Bad condition'},
                                 {name: 'Good repair'},
                                 {name: 'Emergency condition'},
                                 {name: 'Normal repair'},
                                 {name: 'Without finishing'}])

countries = Country.create!([{name: 'Belarus', phone_code: '+375'}, 
                             {name: 'Russia', phone_code: '+7'}, 
                             {name: 'Ukraine', phone_code: '+380'}, 
                             {name: 'USA', phone_code: '+1'}, 
                             {name: 'England', phone_code: '+44'}, 
                             {name: 'France', phone_code: '+33'}])

roles = Role.create!([{name: 'Manager', can_read_lot: true, can_edit_lot: true, can_asign: true, can_read_others_lots: true, can_read_dictionary: true, can_edit_dictionary: false, can_give_permission: true, can_work_with_all_property_types: true, can_create_role: false, can_approve_realtor: true, can_freeze_user: true}])

realtor_profiles = []
6.times do
  realtor_profiles << RealtorProfile.create!(registration_number: Faker::Lorem.characters(number: 8, min_alpha: 4, min_numeric: 4), employment_date: Faker::Date.between(from: '2015-01-01', to: '2022-01-01'))
end

client_profiles = []
6.times do
  client_profiles << ClientProfile.create!(description: Faker::Lorem.sentence, country: countries.first)
end

def seed_image(item, file_name)
  item.lot.images.attach(io: File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg")), filename: "#{file_name}.jpg")
end

users = User.create!([{email: "adminadmin@gmail.com", password: "testadmin", password_confirmation: "testadmin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: Faker::Internet.ip_v4_address, last_sign_in_ip: Faker::Internet.ip_v4_address, confirmed_at: Time.now.utc, role: Role.admin, gender: 'male', date_of_birth: '1990-01-28', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, second_name: Faker::Name.middle_name},
                      {email: Faker::Internet.email, password: "testclient", password_confirmation: "testclient", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: Faker::Internet.ip_v4_address, last_sign_in_ip: Faker::Internet.ip_v4_address, confirmed_at: Time.now.utc, role: Role.client, gender: 'male', date_of_birth: '2002-11-14', profilable: client_profiles.first, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, second_name: Faker::Name.middle_name},
                      {email: Faker::Internet.email, password: "testrealtor", password_confirmation: "testrealtor", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: Faker::Internet.ip_v4_address, last_sign_in_ip: Faker::Internet.ip_v4_address, confirmed_at: Time.now.utc, role: Role.realtor, gender: 'female', date_of_birth: '1984-03-12', profilable: realtor_profiles.first, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, second_name: Faker::Name.middle_name},
                      {email: Faker::Internet.email, password: "testrealtor", password_confirmation: "testrealtor", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: Faker::Internet.ip_v4_address, last_sign_in_ip: Faker::Internet.ip_v4_address, confirmed_at: Time.now.utc, role: Role.realtor, gender: 'male', date_of_birth: '1993-05-02', profilable: realtor_profiles.second, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, second_name: Faker::Name.middle_name},
                      {email: Faker::Internet.email, password: "testmanager", password_confirmation: "testmanager", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: Faker::Internet.ip_v4_address, last_sign_in_ip: Faker::Internet.ip_v4_address, confirmed_at: Time.now.utc, role: roles.first, gender: 'female', date_of_birth: '1979-12-10', profilable: realtor_profiles.third, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, second_name: Faker::Name.middle_name}])

deal_types = DealType.create!([{name: 'Rent'},
                              {name: 'Sale'},
                              {name: 'Swap'},
                              {name: 'Purchase'},
                              {name: 'Rent for day'}])

commercial_premises = CommercialPremise.create!([
    {
        area: 23.5, floor: 1, number_of_premises: 3, plot_of_land: 11, commercial_premises_kind: commercial_premises_kinds[1], 
        lot_attributes: 
        {
            state: 'published', title: 'Building for sale in the city', description: 'For sale detached 2storey office building in the city center fenced', price: 12.3, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[1],
            address_attributes: 
            { 
                building: 34, description: 'The building is located in the courtyards, across the road from the Komarovsky market, 5-7 minutes. walk from the metro station "Y. Kolas Square".', street: streets[1] 
            }
        }
    }, 
    {
        area: 123.8, floor: 3, number_of_premises: 10, plot_of_land: 61, commercial_premises_kind: commercial_premises_kinds[3],
        lot_attributes: 
        { 
            state: 'published', title: 'Commercial space for sale', description: 'Installment offered', price: 18.6, asigner: users[0], asignee: users.third,  client: users[1], deal_type: deal_types[1],
            address_attributes: 
            { 
                building: 12, description: 'Located on Pobediteley Avenue, in the Minsk Arena area.', street: streets[2] 
            } 
        }
    }, 
    {
        area: 13.3, floor: 4, number_of_premises: 1, plot_of_land: 6, commercial_premises_kind: commercial_premises_kinds[2],
        lot_attributes: 
        {
            state: 'published', title: 'Multifunctional Business Center', description: 'Designer renovation of the office', price: 134.1, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[2],
            address_attributes: 
            { 
                building: 65, description: 'Air conditioning, separate entrance, parking, access roads, alarm system, video surveillance, furniture, computer network, high-speed internet.', street: streets[3] 
            } 
        }
    }, 
    {
        area: 82.4, floor: 1, number_of_premises: 2, plot_of_land: 41, commercial_premises_kind: commercial_premises_kinds[4],
        lot_attributes: 
        {
            state: 'published', title: 'Sale of class A business center from the owner', description: 'Offices overlooking the Minsk Sea.', price: 16.9, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[3],
            address_attributes: 
            { 
                building: 140, description: 'Separate entrance, ramp, shared construction.', street: streets[4]
            } 
        }
    }, 
    {
        area: 14.5, floor: 2, number_of_premises: 1, plot_of_land: 7, commercial_premises_kind: commercial_premises_kinds[5],
        lot_attributes: 
        {
            state: 'published', title: 'Commercial premises in a new residential complex', description: 'Equipment, natural lighting, heating, electricity, water: yes, bathroom: yes', price: 25.6, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[3],
            address_attributes: 
            { 
                building: 2, description: 'Private property, busy place, convenient parking, high ceilings, all utilities.', street: streets[5]
            } 
        }
    }, 
    {
        area: 10.6, floor: 1, number_of_premises: 1, plot_of_land: 5, commercial_premises_kind: commercial_premises_kinds.first,
        lot_attributes: 
        {
            state: 'published', title: 'Complex of multifunctional premises for sale', description: 'The premises are equipped with the necessary engineering communications. Ideal for small to medium retail locations.', price: 18.6, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[2],
            address_attributes: 
            { 
                building: 95, description: 'Convenient and affordable transport links. Public transport stops nearby. Parking. Convenient access ways. There is a loading and unloading area.', street: streets[6] 
            } 
        }
    }
])

for i in 0..5 do
  seed_image(commercial_premises[i], "cp#{i}")
end


country_side_houses = CountrySideHouse.create!([
    {
        floors_count: 2, land_area: 12.3, total_area: 17.6, year_of_construction: 2016, country_side_house_kind: country_side_house_kinds[4], ready_state: ready_states[4], wall_material: wall_materials[4],
        lot_attributes: 
        {
            state: 'published', title: 'Cottages in the residential complex Green Harbor', description: 'Unique architecture, magnificent nature and own operating organization.', price: 12.3, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[0],
            address_attributes: 
            { 
                building: 34, description: 'Forest, biological reserve and golf courses, landscaped area.', street: streets[1] 
            }
        }
    }, 
    {
        floors_count: 1, land_area: 10.5, total_area: 13.2, year_of_construction: 2011, country_side_house_kind: country_side_house_kinds[1], ready_state: ready_states[1], wall_material: wall_materials[1],
        lot_attributes: 
        { 
            state: 'published', title: 'Home for gourmet real estate!', description: 'Cottage for sale in a premium building district of the National Library.', price: 18.6, asigner: users[0], asignee: users.third,  client: users[1], deal_type: deal_types[1],
            address_attributes: 
            { 
                building: 12, description: 'Video surveillance inside the house and around the perimeter of the territory adjacent to it. All communications are central.', street: streets[2] 
            } 
        }
    }, 
    {
        floors_count: 3, land_area: 29.4, total_area: 36.3, year_of_construction: 2020, country_side_house_kind: country_side_house_kinds[2], ready_state: ready_states[2], wall_material: wall_materials[2],
        lot_attributes: 
        {
            state: 'published', title: 'Modern house in a cottage village near the forest!', description: 'Modern cottage with a good repair. Sauna, guest house, barbecue area. Year-round communications, video surveillance.', price: 134.1, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[2],
            address_attributes: 
            { 
                building: 65, description: 'The forest is nearby, a pond / river is nearby, a picturesque place, a bathhouse, a gazebo, landscape design, households. building, fireplace.', street: streets[3] 
            } 
        }
    }, 
    {
        floors_count: 2, land_area: 15.3, total_area: 19.2, year_of_construction: 2019, country_side_house_kind: country_side_house_kinds[3], ready_state: ready_states[3], wall_material: wall_materials[4],
        lot_attributes: 
        {
            state: 'published', title: 'Comfortable cottage for living and recreation in a historical place.', description: 'Artesian well, gas, combined heating, two wells, local sewage. Landscaping.', price: 16.9, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[3],
            address_attributes: 
            { 
                building: 140, description: 'A very good location - on the banks of the river, next to the Vileika Canal and the Yanka Kupala Museum.', street: streets[4]
            } 
        }
    }, 
    {
        floors_count: 1, land_area: 11.9, total_area: 16.7, year_of_construction: 2007, country_side_house_kind: country_side_house_kinds[4], ready_state: ready_states[4], wall_material: wall_materials[3],
        lot_attributes: 
        {
            state: 'published', title: 'Cottage in a picturesque place with developed infrastructure.', description: 'Developed infrastructure nearby: school, post office, 2 shops, playground, mini-field for football and basketball. All communications: gas in the house, central water, sewerage, electrics.', price: 25.6, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[3],
            address_attributes: 
            { 
                building: 2, description: 'Landscaped area, sown lawn. The site is fenced around the perimeter. Outbuilding. Parking for 3 cars. Canopy.', street: streets[5]
            } 
        }
    }, 
    {
        floors_count: 3, land_area: 47.7, total_area: 61.1, year_of_construction: 2021, country_side_house_kind: country_side_house_kinds[5], ready_state: ready_states[2], wall_material: wall_materials[0],
        lot_attributes: 
        {
            state: 'published', title: 'Buy your dream home by the lake!', description: 'Garage, gazebo, landscaping, households. buildings, furniture, fireplace, wood trim.', price: 18.6, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[2],
            address_attributes: 
            { 
                building: 95, description: 'The forest is nearby, the pond / river is nearby, a picturesque place.', street: streets[6] 
            } 
        }
    }
])

for i in 0..5 do
  seed_image(country_side_houses[i], "csh#{i}")
end

flats = Flat.create!([
    {
        celling_height: 2.3, floor: 12, kitchen_area: 10.2, living_area: 18.7, rooms_count: 3, total_area: 32.7, year_of_construction: 2012, renovation: renovations[2], wall_material: wall_materials[3],
        lot_attributes: 
        {
            state: 'published', title: 'Furnished apartment', description: 'Selling a cozy 3-room apartment in an ecologically clean area of the city.', price: 12.3, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[0],
            address_attributes: 
            { 
                building: 34, description: 'Nearby are schools, kindergartens, shops, banks. Within walking distance of bus stops, childrens beach.', street: streets[1] 
            }
        }
    }, 
    {
        celling_height: 2.4, floor: 3, kitchen_area: 7.2, living_area: 9.3, rooms_count: 2, total_area: 21.3, year_of_construction: 1984, renovation: renovations[1], wall_material: wall_materials[2],
        lot_attributes: 
        { 
            state: 'published', title: 'We offer you an excellent two-room apartment with European-style renovation', description: 'The apartment is insulated from the outside. Separate bathroom. There are always free parking spaces at the entrance', price: 18.6, asigner: users[0], asignee: users.third,  client: users[1], deal_type: deal_types[1],
            address_attributes: 
            { 
                building: 12, description: 'Nearby are schools, kindergartens, shops, banks.', street: streets[2] 
            } 
        }
    }, 
    {
        celling_height: 1.98, floor: 9, kitchen_area: 8.9, living_area: 10.1, rooms_count: 1, total_area: 24.8, year_of_construction: 1999, renovation: renovations[4], wall_material: wall_materials[6],
        lot_attributes: 
        {
            state: 'published', title: '4-room apartment on the banks of the Svisloch!', description: 'Built-in wardrobes, metal door, double glazing, water meters, car parking, intercom, ready to move in, green area.', price: 134.1, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[2],
            address_attributes: 
            { 
                building: 65, description: 'Developed infrastructure: within walking distance of various shops, pharmacies, adult and childrens clinics, kindergartens, schools, public transport stops. Near the house forest park Pyshki.', street: streets[3] 
            } 
        }
    }, 
    {
        celling_height: 2.5, floor: 5, kitchen_area: 19.6, living_area: 34.9, rooms_count: 4, total_area: 67.1, year_of_construction: 2020, renovation: renovations[3], wall_material: wall_materials[7],
        lot_attributes: 
        {
            state: 'published', title: 'Renovated apartment in Levada! Hurry up to buy!', description: 'The apartment is neat: double-glazed windows are installed, a metal entrance door, a loggia is glazed with aluminum frames, bathroom and toilet are tiled.', price: 16.9, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[3],
            address_attributes: 
            { 
                building: 140, description: 'The house has been overhauled.', street: streets[4]
            } 
        }
    }, 
    {
        celling_height: 2.1, floor: 1, kitchen_area: 11.4, living_area: 21.8, rooms_count: 3, total_area: 34.4, year_of_construction: 2016, renovation: renovations[5], wall_material: wall_materials[8],
        lot_attributes: 
        {
            state: 'published', title: 'Cozy 2-room apartment with excellent repair', description: 'Furniture, built-in wardrobes, metal door, double-glazed windows, water meters, car parking, intercom, ready to move in, green area, free layout, VIP apartment, new building.', price: 25.6, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[3],
            address_attributes: 
            { 
                building: 2, description: 'Landscaped yard, close to shops and public transport.', street: streets[5]
            } 
        }
    }, 
    {
        celling_height: 2.2, floor: 17, kitchen_area: 9.5, living_area: 15.6, rooms_count: 1, total_area: 31.5, year_of_construction: 2009, renovation: renovations[2], wall_material: wall_materials[3],
        lot_attributes: 
        {
            state: 'published', title: 'Species 4-room apartment on the first coastline of Svisloch!', description: 'The house is a museum, an apartment surrounded by an eternal holiday, a profitable investment!', price: 18.6, asigner: users[0], asignee: users.third,  client: users[2], deal_type: deal_types[2],
            address_attributes: 
            { 
                building: 95, description: 'Double-glazed windows, water meters, intercom, video intercom, city center, green area, free planning, new building', street: streets[6] 
            } 
        }
    }
])

for i in 0..5 do
  seed_image(flats[i], "f#{i}")
end

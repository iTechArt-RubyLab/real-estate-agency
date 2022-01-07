# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cities = City.create([{name: I18n.t('city.name_1'), locality_size: I18n.t('city.locality_size.ls_3'), region: I18n.t('city.region.region_2'), description: I18n.t('city.description.d_1')}, 
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
districts = District.create([{name: I18n.t('district.name_1'), city: cities[5]}, 
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
streets = Street.create([{name: I18n.t('street.name_1'), district: districts.first}, 
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
addresses = Address.create([{building: 34, description: 'descrption', street: streets[1]}, 
                            {building: 12, description: 'descrption', street: streets[2]}, 
                            {building: 65, description: 'descrption', street: streets[3]}, 
                            {building: 140, description: 'descrption', street: streets[4]}, 
                            {building: 2, description: 'descrption', street: streets[5]}, 
                            {building: 95, description: 'descrption', street: streets[6]},
                            {building: 1, description: 'descrption', street: streets[7]}, 
                            {building: 87, description: 'descrption', street: streets[8]}, 
                            {building: 30, description: 'descrption', street: streets[9]}, 
                            {building: 76, description: 'descrption', street: streets[10]},
                            {building: 21, description: 'descrption', street: streets[11]}, 
                            {building: 238, description: 'descrption', street: streets[12]}, 
                            {building: 19, description: 'descrption', street: streets[13]}, 
                            {building: 82, description: 'descrption', street: streets[0]}])
commercial_premises_kinds = CommercialPremisesKind.create([{name: 'Cafe'}, 
                                                           {name: 'Office'}, 
                                                           {name: 'Boutique'}, 
                                                           {name: 'Bank'}, 
                                                           {name: 'Salon'}, 
                                                           {name: 'Bar'}])
commercial_premises = CommercialPremise.create([{area: 23.5, floor: 1, number_of_premises: 3, plot_of_land: 11, commercial_premises_kind: commercial_premises_kinds[1]}, 
                                                {area: 123.8, floor: 3, number_of_premises: 10, plot_of_land: 61, commercial_premises_kind: commercial_premises_kinds[2]}, 
                                                {area: 13.3, floor: 4, number_of_premises: 1, plot_of_land: 6, commercial_premises_kind: commercial_premises_kinds[3]}, 
                                                {area: 82.4, floor: 1, number_of_premises: 2, plot_of_land: 41, commercial_premises_kind: commercial_premises_kinds[4]}, 
                                                {area: 14.5, floor: 2, number_of_premises: 1, plot_of_land: 7, commercial_premises_kind: commercial_premises_kinds[5]}, 
                                                {area: 10.6, floor: 1, number_of_premises: 1, plot_of_land: 5, commercial_premises_kind: commercial_premises_kinds[6]}])
country_side_house_kinds = CountrySideHouseKind.create([{name: 'Cottage'}, 
                                                        {name: 'House'}, 
                                                        {name: 'Townhouse'}, 
                                                        {name: 'Plot'}, 
                                                        {name: 'Summer cottage'}, 
                                                        {name: 'Penthouse'}])
ready_states = ReadyState.create([{name: 'Ready'}, 
                                  {name: 'Under construction'}, 
                                  {name: 'Suspended'},
                                  {name: 'Restored'},
                                  {name: 'Not started'}]) 
wall_materials = WallMaterial.create([{name: 'Brick'}, 
                                      {name: 'Blocky'}, 
                                      {name: 'Panel'}, 
                                      {name: 'Slag concrete'}, 
                                      {name: 'Tree'}, 
                                      {name: 'Frame wooden'},
                                      {name: 'Monolithic'},
                                      {name: 'Silicate blocks'},
                                      {name: 'Frame block'}])
country_side_houses = CountrySideHouse.create([{floors_count: 2, land_area: 12.3, total_area: 17.6, year_of_construction: 2016, country_side_house_kind: country_side_house_kinds[4], ready_state: ready_states[4], wall_material: wall_materials[4]}, 
                                               {floors_count: 1, land_area: 10.5, total_area: 13.2, year_of_construction: 2011, country_side_house_kind: country_side_house_kinds[1], ready_state: ready_states[1], wall_material: wall_materials[1]}, 
                                               {floors_count: 3, land_area: 29.4, total_area: 36.3, year_of_construction: 2020, country_side_house_kind: country_side_house_kinds[2], ready_state: ready_states[2], wall_material: wall_materials[2]}, 
                                               {floors_count: 0, land_area: 15.3, total_area: 19.2, year_of_construction: 2019, country_side_house_kind: country_side_house_kinds[3], ready_state: ready_states[3], wall_material: wall_materials[4]}, 
                                               {floors_count: 1, land_area: 11.9, total_area: 16.7, year_of_construction: 2007, country_side_house_kind: country_side_house_kinds[4], ready_state: ready_states[4], wall_material: wall_materials[3]}, 
                                               {floors_count: 3, land_area: 47.7, total_area: 61.1, year_of_construction: 2021, country_side_house_kind: country_side_house_kinds[5], ready_state: ready_states[5], wall_material: wall_materials[0]}])
renovations = Renovation.create([{name: 'Euro-renovation'},
                                 {name: 'Satisfactory repair'},
                                 {name: 'Construction finishing'},
                                 {name: 'Excellent renovation'},
                                 {name: 'Bad condition'},
                                 {name: 'Good repair'},
                                 {name: 'Emergency condition'},
                                 {name: 'Normal repair'},
                                 {name: 'Without finishing'}])
flats = Flat.create([{celling_height: 2.3, floor: 12, kitchen_area: 10.2, living_area: 18.7, rooms_count: 3, total_area: 32.7, year_of_construction: 2012, renovation: renovations[2], wall_material: wall_materials[3]}, 
                     {celling_height: 2.4, floor: 3, kitchen_area: 7.2, living_area: 9.3, rooms_count: 2, total_area: 21.3, year_of_construction: 1984, renovation: renovations[1], wall_material: wall_materials[2]}, 
                     {celling_height: 1.98, floor: 9, kitchen_area: 8.9, living_area: 10.1, rooms_count: 1, total_area: 24.8, year_of_construction: 1999, renovation: renovations[4], wall_material: wall_materials[6]}, 
                     {celling_height: 2.5, floor: 5, kitchen_area: 19.6, living_area: 34.9, rooms_count: 4, total_area: 67.1, year_of_construction: 2020, renovation: renovations[3], wall_material: wall_materials[7]}, 
                     {celling_height: 2.1, floor: 1, kitchen_area: 11.4, living_area: 21.8, rooms_count: 3, total_area: 34.4, year_of_construction: 2016, renovation: renovations[5], wall_material: wall_materials[8]}, 
                     {celling_height: 2.2, floor: 17, kitchen_area: 9.5, living_area: 15.6, rooms_count: 1, total_area: 31.5, year_of_construction: 2009, renovation: renovations[2], wall_material: wall_materials[3]}])

roles = Role.create([{name: 'Admin', can_read_lot: true, can_edit_lot: true, can_asign: true, can_read_dictionary: true, can_edit_dictionary: true, can_give_permission: true, can_work_with_all_property_types: true, can_create_role: true, can_approve_realtor: true, can_freeze_user: true}, 
                     {name: 'Registred user', can_read_lot: true, can_edit_lot: false, can_asign: false, can_read_dictionary: false, can_edit_dictionary: false, can_give_permission: false, can_work_with_all_property_types: false, can_create_role: false, can_approve_realtor: false, can_freeze_user: false}, 
                     {name: 'Realtor', can_read_lot: true, can_edit_lot: true, can_asign: false, can_read_dictionary: true, can_edit_dictionary: false, can_give_permission: false, can_work_with_all_property_types: false, can_create_role: false, can_approve_realtor: false, can_freeze_user: true}, 
                     {name: 'Manager', can_read_lot: true, can_edit_lot: true, can_asign: true, can_read_dictionary: true, can_edit_dictionary: false, can_give_permission: true, can_work_with_all_property_types: true, can_create_role: false, can_approve_realtor: true, can_freeze_user: true}])

#users = User.create([{email: 'qweqweqwe@gmail.com', encrypted_password: 'zxczxczxc', reset_password_token: 'zxczxczxc', reset_password_sent_at: 'datetime', remember_created_at: 'datetime', current_sign_in_ip}])
users = User.create!([{email: "testadmin@gmail.com", password: "testadminuser", password_confirmation: "testadminuser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmed_at: Time.now.utc, role: roles[0]},
                      {email: "testuser@gmail.com", password: "testuseraccount", password_confirmation: "testuseraccount", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmed_at: Time.now.utc, role: roles[1]},
                      {email: "testcustomer@gmail.com", password: "testcustomeruser", password_confirmation: "testcustomeruser", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmed_at: Time.now.utc}])
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
                            {name: I18n.t('street.name_5'), district: districts[14]}, 
                            {name: I18n.t('street.name_6'), district: districts[11]},
                            {name: I18n.t('street.name_7'), district: districts[12]}, 
                            {name: I18n.t('street.name_8'), district: districts[3]}, 
                            {name: I18n.t('street.name_9'), district: districts[5]}, 
                            {name: I18n.t('street.name_10'), district: districts.second},
                            {name: I18n.t('street.name_11'), district: districts[9]}, 
                            {name: I18n.t('street.name_12'), district: districts[13]}, 
                            {name: I18n.t('street.name_13'), district: districts[10]}, 
                            {name: I18n.t('street.name_14'), district: districts[14]}])
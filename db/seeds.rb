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
 
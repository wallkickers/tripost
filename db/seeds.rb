# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Theme.create(type: "Theme ",name: '一人旅')
Theme.create(type: "Theme ",name: '友人')
Theme.create(type: "Theme ",name: '親子')
Theme.create(type: "Theme ",name: '家族旅行')

Theme.create(type: 'Destination',name: '北海道')
Theme.create(type: 'Destination',name: '東北')
Theme.create(type: 'Destination',name: '関東')
Theme.create(type: 'Destination',name: '中部')
Theme.create(type: 'Destination',name: '近畿')
Theme.create(type: 'Destination',name: '中国')
Theme.create(type: 'Destination',name: '四国')
Theme.create(type: 'Destination',name: '九州')
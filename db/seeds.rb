# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'creating users'
(1..10).each do |i|
  user = User.create(email: "test#{i}@sunny.com", password: 'password', username: "sunny_user_#{i}", mobile_phone: "18#{i}21#{i}8#{i}")
end

puts 'creating admin users...'
AdminUser.create(
  email: 'admin@sunny.com',
  password: 'password'
)
puts "crate example user success"

Article.create(
	title: '现实社会',
	content: '这是个现实的社会，感情不能当饭吃，贫穷夫妻百事哀。不要相信电影里的故事情节，那只是个供许多陌生人喧嚣情感的场所。只有不理智和不现实的人才相信'
	)
Article.create(
	title: '算卦星座命理',
	content: '不要相信算卦星座命理，那是哄小朋友的，命运掌握在自己手中。坐在家里等什么房子，车子,还不如睡一觉做个好梦。'
	)
Article.create(
	title: '出路出路',
	content: '出路出路，走出去了，总是会有路的。困难苦难，困在家里就是难。《社会调查》普遍认为。'
	)
Article.create(
	title: '人都有惰性',
	content: ' 是人都有惰性，这是与生俱来的，但是我们后天可以改变这种惰性，因为有很多人正在改变。对于某种事物或是生意不要等别人做到了，我才想到。不要等别人已经赚到钱了，我才想去做。没有人相信的是市场和机遇，大家都相信的叫做膨胀。'
	)
puts 'creating articles success..'
Article.all.map {|x| x.update_attribute(:user_id, rand(1..User.all.count))}
Article.all.map {|x| x.update_attribute(:created_at, rand(30.days).ago)}
puts 'Add Users to Artciles.....'
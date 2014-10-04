# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if User.count == 0
	users  = User.create([{name:'Andrey'},{name:'Sergey'},{name:'Vasya'},{name:'Mark'},{name:'Tom'}])
else
	p "\nUsers table not empty"
	
end
if PointLineItem.count == 0
	points = PointLineItem.create([
	{user_id:1,points:25,source:'Joined Loyalty Program',created_at:'01/01/13'},
	{user_id:1,points:410,source:'Placed an order',created_at:'10/02/13'},
	{user_id:1,points:-250,source:'Redeemed with an order',created_at:'15/02/13'},
	{user_id:1,points:10,source:'Wrote a review',created_at:'18/02/13'},
	{user_id:1,points:570,source:'Placed an order',created_at:'12/03/13'},
	{user_id:1,points:-500,source:'Redeemed with an order',created_at:'15/04/13'},
	{user_id:1,points:130,source:'Made a purchase',created_at:'27/06/13'},

	{user_id:2,points:45,source:'Joined Loyalty Program',created_at:'01/01/13'},
	{user_id:2,points:430,source:'Placed an order',created_at:'10/02/13'},
	{user_id:2,points:-220,source:'Redeemed with an order',created_at:'15/02/13'},
	{user_id:2,points:30,source:'Wrote a review',created_at:'18/02/13'},
	{user_id:2,points:590,source:'Placed an order',created_at:'12/03/13'},
	{user_id:2,points:-520,source:'Redeemed with an order',created_at:'15/04/13'},
	{user_id:2,points:150,source:'Made a purchase',created_at:'27/06/13'},

	{user_id:3,points:55,source:'Joined Loyalty Program',created_at:'01/01/13'},
	{user_id:3,points:460,source:'Placed an order',created_at:'10/02/13'},
	{user_id:3,points:-280,source:'Redeemed with an order',created_at:'15/02/13'},
	{user_id:3,points:40,source:'Wrote a review',created_at:'18/02/13'},
	{user_id:3,points:600,source:'Placed an order',created_at:'12/03/13'},
	{user_id:3,points:-530,source:'Redeemed with an order',created_at:'15/04/13'},
	{user_id:3,points:180,source:'Made a purchase',created_at:'27/06/13'},
])
else
	p "\nPointLineItem table not empty"
end
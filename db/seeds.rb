# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@user=User.create!(:email=>"superadmin@finesse.com",:first_name=>"super",:last_name=>"admin",:username=>"superadmin",:password=>"finesse1",:password_confirmation=>"finesse1",:admin=>false,:super_admin=>true,:facilitator=>false)
@user.superadmin=true
@user.admin=false
@user.facilitator=false
@user.save!

@user=User.create!(:email=>"admin@finesse.com",:first_name=>"normal",:last_name=>"admin",:username=>"admin",:password=>"finesse1",:password_confirmation=>"finesse1",:admin=>true,:super_admin=>false,:facilitator=>false)
@user.superadmin=false
@user.admin=true
@user.facilitator=false
@user.save!





@user=User.create!(:email=>"facilitator@finesse.com",:first_name=>"normal",:last_name=>"facilitator",:username=>"facilitator",:password=>"finesse1",:password_confirmation=>"finesse1",:admin=>false,:super_admin=>false,:facilitator=>true)
@user.superadmin=false
@user.admin=false
@user.facilitator=true
@user.save!


@user=User.find_by_username("facilitator")
Facilitator.create!(:user_id=>@user.id,:client_id=>1)

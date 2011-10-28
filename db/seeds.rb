# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@user=User.create!(:email=>"superadmin@finesse.com", :first_name=>"super", :last_name=>"admin", :username=>"superadmin", :password=>"finesse1", :password_confirmation=>"finesse1", :admin=>false, :super_admin=>true, :facilitator=>false)
@user.superadmin=true
@user.admin=false
@user.facilitator=false
@user.student=false
@user.save!

@user=User.create!(:email=>"admin@finesse.com", :first_name=>"normal", :last_name=>"admin", :username=>"admin", :password=>"finesse1", :password_confirmation=>"finesse1", :admin=>true, :super_admin=>false, :facilitator=>false)
@user.superadmin=false
@user.admin=true
@user.facilitator=false
@user.student=false
@user.save!


@user=User.create!(:email=>"facilitator@finesse.com", :first_name=>"normal", :last_name=>"facilitator", :username=>"facilitator", :password=>"finesse1", :password_confirmation=>"finesse1", :admin=>false, :super_admin=>false, :facilitator=>true)
@user.superadmin=false
@user.admin=false
@user.facilitator=true
@user.student=false
@user.save!


@user=User.find_by_username("facilitator")
Facilitator.create!(:user_id=>@user.id, :client_id=>1)

@constants=Constant.create!(:name=>"a", :value=>10)
@constants=Constant.create!(:name=>"k", :value=>10)

DealerCategory.create!(:name=>"National")
DealerCategory.create!(:name=>"Local")




Unit.create!(:name=>"KM")
Unit.create!(:name=>"Secs")
Unit.create!(:name=>"Inch")

Impact.create!(:name=>"HIGH")
Impact.create!(:name=>"LOW")
Impact.create!(:name=>"MEDIUM")

ExpenseType.create!(:name=>"HR")
ExpenseType.create!(:name=>"Media")
ExpenseType.create!(:name=>"Channel")
ExpenseType.create!(:name=>"Factory")

ConsumerCategory.create!(:name=>"category1")
ConsumerCategory.create!(:name=>"category2")
ConsumerCategory.create!(:name=>"category3")
ConsumerCategory.create!(:name=>"category4")










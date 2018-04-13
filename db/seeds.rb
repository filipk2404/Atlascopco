# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  connect do sql database cr


require 'sequel'
db = Sequel.odbc(:drvconnect=>'driver={IBM i Access ODBC Driver};system=ATCOAICA;database=ATCOAICA;uid=CRPPKR;password=Tekno1804;DefaultLibraries=, JEBPCSF;authentication=server')
tables = db[:QSYS2__SYSTABLES].where("TABLE_NAME like ?", "IIM%")
tables.each do |record|
  puts record[:table_name]
end

return


puts "starting Itemseed"

Item.delete_all

150.times do

@item ="1901" + rand(0001.. 45897).to_s
@desc = "Description #{@item}"
@extradesc = "extradesc #{@item} "


if rand(1..9).even?

@lenght = rand(10.. 100)
@width = rand(10.. 100)
@height = rand(10.. 100)
@weight = rand( 10.. 10000)

if rand(1..9).even?
@stocking  = "Palet"
@picking   ="forklift"

else

  @stocking  = "xbin"
  @picking   ="picking"

end

else

 @lenght = 0
  @width = 0
 @height = 0
 @weight = 0

 @stocking  = nil
 @picking   = nil



end

 Item.create!( item_code: @item, description:@desc, extra_description: @extradesc, lenght:@lenght , width:@width , weight:@weight, height: @height , stocking: @stocking, picking:@picking )
       @base = 1.12 + rand(0.05.. 0.09)

end

puts "Item seed completed"



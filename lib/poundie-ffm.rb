require 'cgi'

class PoundieFfm < Poundie::Plugin
  register :poundie_ffm

  prefix %r/poundie ffm\s+/ do |term|
    response = JSON.parse(`curl http://farthestfromme.com/api/antipodal_property.js?q=#{CGI.escape(term)}`)
    location = response["response"]["location"]
    property = response["response"]["antipodal_property"]
    speak "The antipodal restaurant to #{location["name"]} is #{property["name"]} @ #{property["lat"]}, #{property["lng"]}."
    speak "http://maps.google.com/maps/api/staticmap?size=512x512&maptype=roadmap&markers=color:green|label:A|#{location["lat"]},#{location["lng"]}&markers=color:red|label:B|#{property["lat"]},#{property["lng"]}&path=color:0x0000ff|weight:5|#{location["lat"]},#{location["lng"]}|#{property["lat"]},#{property["lng"]}&sensor=false"
  end
end

Poundie.use :poundie_ffm
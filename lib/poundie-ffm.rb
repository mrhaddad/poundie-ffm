require 'cgi'

class PoundieFfm < Poundie::Plugin
  register :poundie_ffm

  prefix %r/poundie ffm\s+/ do |term|
    response = JSON.parse(`curl http://farthestfromme.com/api/antipodal_property.js?q=#{CGI.escape(term)}`)
    property = response["response"]["antipodal_property"]
    speak "The antipodal restaurant to #{term} is #{property["name"]} @ #{property["lat"]}, #{property["lng"]}"
  end
end

Poundie.use :poundie_ffm
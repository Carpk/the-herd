class Traffic < ActiveRecord::Base
  attr_accessible :wait, :place_id, :time
  belongs_to :place

  def self.traffic_report(store_id)
    puts "STORE ID: #{store_id}"
    location_report = Traffic.where(place_id: store_id).all
    puts "ALL FROM LOCATION: #{location_report}"
    chart = {}
    location_report.each do |t|

      if t.time.strftime('%A') == Time.now.strftime('%A')
        puts "PASS INTO HASH"
        chart.merge!({t.time => t.wait})
      end
    end
    chart
  end
end
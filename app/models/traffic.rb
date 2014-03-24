class Traffic < ActiveRecord::Base
  attr_accessible :wait, :place_id, :time
  belongs_to :place

  def self.traffic_report(store_id)
    location_report = Traffic.where(place_id: store_id).all
    chart = {}
    location_report.each do |t|
      if (t.time - 5*60*60).strftime('%A') == Time.now.strftime('%A')
        chart.merge!({t.time => t.wait})
      end
    end
    chart
  end
end
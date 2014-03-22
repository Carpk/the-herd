class Traffic < ActiveRecord::Base
  attr_accessible :wait, :place_id
  belongs_to :place

  def self.traffic_report(store_id)
    location_report = Traffic.where(place_id: store_id) 
    chart = {}
    location_report.each do |t|
      if t.created_at.strftime('%A') == Time.now.strftime('%A')
        chart.merge!({t.created_at => t.wait})
      end
    end
    chart
  end
end
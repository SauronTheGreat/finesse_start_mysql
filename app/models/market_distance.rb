class MarketDistance < ActiveRecord::Base



  def self.make_balancing_distance(target_market_id,source_market_id,distance)
    @market_distance=MarketDistance.new
    @market_distance.source_market_id=target_market_id
    @market_distance.target_market_id=source_market_id
    @market_distance.distance=distance
    @market_distance.save!

  end
end

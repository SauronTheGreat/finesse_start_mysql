class Consumer < ActiveRecord::Base


  #we will create a a method to create consumers based on dealers
  #This method will have an argument as market id

  def self.create_consumers_from_dealers(market_id)
    #first step is to find market
    @market=Market.find(market_id)
    #then find all the dealers in that market
    @dealers=@market.dealers

    #for all dealers generate all consumers
    @dealers.each do |dealer|
      #each consumer of each dealer
      dealer.catchment_of_consumers.times do |consumer|
        @consumer=Consumer.new
        #now we generate random number to assign a consumer category for each consumer
        #currently we use a random number
        min=ConsumerCategory.first.id
        max=ConsumerCategory.last.id
        category_id=min+rand(max-min)
        @consumer.consumer_category_id=category_id
        #we thus assign category to each consumer
        @consumer.dealer_id=dealer.id
        #we assign dealer id as current dealer to the consumer

        #we now assign probability of purchase to each  consumer
        #this depends upon consumercategory and decision parameters
        #we define below a case where we use only consumercategory

        case @consumer.consumer_category_id
          when 1
            @consumer.probability_of_purchase=60+rand(20) #range 60-80
          when 2
            @consumer.probability_of_purchase=40+rand(20) #range 40-60
          when 3
            @consumer.probability_of_purchase=20+rand(20) #range 20-40

        end

        #we now decide on final decision of the consumer
        a_random_number=rand(100)
        if a_random_number < @consumer.probability_of_purchase
          @consumer.final_decision=true
        else
          @consumer.final_decision=false
        end

        #we now assign personal taste for the consumer
          @consumer.personal_taste=rand(2)
        @consumer.save!
        #we finally save the consumer
      end

    end


  end

end

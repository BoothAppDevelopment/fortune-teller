class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

    def unlucky
    @random_array = Array.new

    5.times do
      number = rand(1...100)
      
      @random_array.push(number)
    end

    render({ :template => "lottery_stuff/unlucky.html.erb"})
  end 

end

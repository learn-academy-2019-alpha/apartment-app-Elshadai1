class GameController < ApplicationController
    def try
        cookies[:number] = rand(11) unless cookies[:number]
        @guess = params[:guess]

        cookies[:counter] = 0 unless cookies[:counter]
        @counter= cookies[:counter].to_i

        if @guess.to_i > 10 || @guess.to_i < 0
            @guess_answer ='Please guess b/n 1 and 10'
            @counter += 1
        elsif cookies[:number] == @guess
            @guess_answer = "You Won!"
            @counter = 0
        elsif cookies[:number] > @guess
            @guess_answer = "Please guess Higher"
            @counter += 1
        elsif cookies[:number] < @guess
            @guess_answer = "Please guess Lower"
            @counter += 1
        end
        cookies[:counter] = @counter
        render "try.html.erb"

    end

    def home_page
    end

end

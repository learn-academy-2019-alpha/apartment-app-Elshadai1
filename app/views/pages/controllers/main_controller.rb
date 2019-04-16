class MainController < ApplicationController
  def answers
      if params[:number].to_i.even?
       @result_string = "Even"
     else
       @result_string = "Odd"
     end
     render "answers.html.erb"
   end
  #
def home_page
end
    # render html: "The number is" params[:number] #.html_safe
  end
  # def numbers
  #     render html: "42"
  # end
  # def team
  #     render html: "Melkam, Muzit, Dae Dae"
  # end
# end

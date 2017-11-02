class ScoresController < ApplicationController

  def average
    @scores = Score.all
    
    count = []
    score = 0
    average = 0

    @scores.each do |key, value| 
      count.push value
    end

    sum_of_scores = count.inject(0) {|result, elem| result + elem}
    average = sum_of_scores.to_f / count.length.to_f
    return average
  end
end
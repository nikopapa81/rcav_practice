class CalculationsController < ApplicationController
  def home
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    @interest_rate = params[:interest_rate].to_f
    @number_of_payments = params[:number_of_payments].to_f
    @present_value = params[:present_value].to_f
    @dec_rate = (@interest_rate)/1200
    @answer = ((@present_value)*(@dec_rate)*(1+(@dec_rate))**(@number_of_payments))/((1+(@dec_rate))**(@number_of_payments)-1)
    # @answer = ((@number_of_payments)*(@dec_rate)*(1+(@dec_rate))**(@number_of_payments))/((1+(@dec_rate))**(@number_of_payments)-1)
  end

  def square
    @the_number = params[:number].to_f
    @answer = (@the_number)*2
  end
end

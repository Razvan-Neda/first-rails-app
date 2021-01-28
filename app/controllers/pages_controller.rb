class PagesController < ApplicationController
  def about
  end

  def contact
    search = params[:member]
    @members = ['Ben', 'Cat','Alex', 'Bob', 'John'] 
    
    if search.present?
      @members = @members.select { |name| name.downcase==search}
    end
    
  end 

  def home
    @time = Date.today.strftime("%B #{Date.today.day.ordinalize}")
  end
end

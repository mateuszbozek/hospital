class MainController < ApplicationController
  before_action :authenticate_user!

  def index
    puts "Jesteś w MainController#index"
    @patients = Patient.where(:depreciated => nil).take(3)
    @surveys = Survey.where(:depreciated => nil).take(3)
    @notes = Note.where(:depreciated => nil).take(3)
  end

  def show
    puts "show"
  end

end
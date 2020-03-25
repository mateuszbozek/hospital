class PatientsController < ApplicationController

  def index
    puts "Jesteś w "
    @patients = Patient.all
  end

  def show
  end

  def create
  end

  def new
  end
end

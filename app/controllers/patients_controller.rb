class PatientsController < ApplicationController
  before_action :authenticate_user!


  def index
    puts "Jesteś w PatientController#index"
    @patients = Patient.where(department_id: current_user.department_id).where(:depreciated => nil)
  end

  def create
    puts "Jesteś w PatientController#create"
    patient = Patient.new do |p|
      p.name = params[:patient][:name]
      p.surename = params[:patient][:surename]
      p.personal_identify_number = params[:patient][:personal_identify_number]
      p.department_id = current_user.department_id
      p.depreciated = nil
    end
    patient.save!
    redirect_to patients_path
  end

  def new
    puts "Jesteś w PatientController#new"
    @patient = Patient.new
  end

  def edit
    puts "Jesteś w PatientController#edit"
    @patient = Patient.find(params[:id])
  end

  def update
    puts "Jesteś w PatientController#update"
    patient = Patient.find(params[:id])
    patient.update_attributes(
        :name => params[:patient][:name],
        :surename => params[:patient][:surename],
        :personal_identify_number => params[:patient][:personal_identify_number]
    )
    redirect_to patients_path
  end

  def destroy
    puts "Jesteś w PatientController#destroy"
    puts params
    patient = Patient.find(params[:id])
    patient.update_attribute(:depreciated, true)
    redirect_to patients_path
  end

end

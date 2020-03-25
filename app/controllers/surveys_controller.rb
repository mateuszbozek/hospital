class SurveysController < ApplicationController

  def index
    puts "Jesteś w SurveysController#index"
    @surveys = Survey.all
  end

  def create
    puts "Jesteś w SurveysController#create"
    puts params.inspect
    survey = Survey.new do |p|
      p.patient_id = params[:survey][:patient_id]
      p.systolic_blood_pressure = params[:survey][:systolic_blood_pressure]
      p.diastolic_blood_pressure = params[:survey][:diastolic_blood_pressure]
      p.pulse = params[:survey][:pulse]
      p.sugar_level = params[:survey][:sugar_level]
      p.temperature = params[:survey][:temperature]
    end
    survey.save!
    redirect_to surveys_path
  end

  def new
    puts "Jesteś w SurveysController#new"
    # @patients = Patient.all.map{ |patient| [patient.id, patient.name + " " + patient.surename ] }
    @patients = Patient.all
    @survey = Survey.new
  end

  def edit
    puts "Jesteś w PatientController#edit"
    @survey = Survey.find(params[:id])
  end

  def update
    puts "Jesteś w PatientController#update"
    survey = Patient.find(params[:id])
    survey.update_attributes(
        :name => params[:patient][:name],
        :surename => params[:patient][:surename],
        :personal_identify_number => params[:patient][:personal_identify_number]
    )
    redirect_to surveys_path
  end

  def destroy
    puts "Jesteś w PatientController#destroy"
    Survey.find(params[:id]).destroy
    redirect_to surveys_path
  end

end

class SurveysController < ApplicationController
  before_action :authenticate_user!

  def index
    puts "Jesteś w SurveysController#index"
    @surveys = Survey.where(:depreciated => nil)
  end

  def create
    puts "Jesteś w SurveysController#create"
    survey = Survey.new do |s|
      s.patient_id = params[:survey][:patient_id]
      s.systolic_blood_pressure = params[:survey][:systolic_blood_pressure]
      s.diastolic_blood_pressure = params[:survey][:diastolic_blood_pressure]
      s.pulse = params[:survey][:pulse]
      s.sugar_level = params[:survey][:sugar_level]
      s.temperature = params[:survey][:temperature]
      s.depreciated = nil
    end
    survey.save!
    redirect_to surveys_path
  end

  def new
    puts "Jesteś w SurveysController#new"
    @patients = Patient.where(:depreciated => nil)
    @survey = Survey.new
  end

  def edit
    puts "Jesteś w PatientController#edit"
    @patients = Patient.where(:depreciated => nil)
    @survey = Survey.find(params[:id])
  end

  def update
    puts "Jesteś w PatientController#update"
    survey = Survey.find(params[:id])
    survey.update_attributes(
        :patient_id => params[:survey][:patient_id],
        :systolic_blood_pressure => params[:survey][:systolic_blood_pressure],
        :diastolic_blood_pressure => params[:survey][:diastolic_blood_pressure],
        :pulse => params[:survey][:pulse],
        :sugar_level => params[:survey][:sugar_level],
        :temperature => params[:survey][:temperature],
    )
    redirect_to surveys_path
  end

  def destroy
    puts "Jesteś w PatientController#destroy"
    survey = Survey.find(params[:id])
    survey.update_attribute(:depreciated, true)
    redirect_to surveys_path
  end

end

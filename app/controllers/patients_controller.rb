class PatientsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    puts "Jesteś w PatientController#index"
    @patients = Patient.where(department_id: current_user.department_id).where(:depreciated => nil)
    respond_to do |format|
      format.html
      format.csv { send_data @patients.to_csv }
      format.xls { send_data @patients.to_csv(col_sep: "\t") }
    end
  end

  def create
    puts "Jesteś w PatientController#create"
    @patient = Patient.new(patient_params)
    @patient.save!
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
    patient = Patient.find(params[:id])
    patient.update_attribute(:depreciated, true)
    redirect_to patients_path
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :surename, :personal_identify_number, :department_id)
  end

end

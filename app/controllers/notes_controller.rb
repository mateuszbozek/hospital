class NotesController < ApplicationController

  def index
    puts "Jesteś w NotesController#index"
    @notes = Note.where(:depreciated => nil)
  end

  def create
    puts "Jesteś w NotesController#create"
    note = Note.new do |n|
      n.patient_id = params[:note][:patient_id]
      n.description = params[:note][:description]
      n.depreciated = nil
    end
    note.save!
    redirect_to notes_path
  end

  def new
    puts "Jesteś w NotesController#new"
    @patients = Patient.where(:depreciated => nil)
    @note = Note.new
  end

  def edit
    puts "Jesteś w NotesController#edit"
    @patients = Patient.where(:depreciated => nil)
    @note = Note.find(params[:id])
  end

  def update
    puts "Jesteś w NotesController#update"
    note = Note.find(params[:id])
    note.update_attributes(
        :patient_id => params[:note][:patient_id],
        :description => params[:note][:description]
    )
    redirect_to notes_path
  end

  def destroy
    puts "Jesteś w NotesController#destroy"
    note = Note.find(params[:id])
    note.update_attribute(:depreciated, true)
    redirect_to notes_path
  end

end

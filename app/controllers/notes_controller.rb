class NotesController < ApplicationController

  def index
    puts "Jesteś w NotesController#index"
    @notes = Note.all
  end

  def show
    puts "Jesteś w NotesController#show"
  end

  def new
    puts "Jesteś w NotesController#new"
  end

  def create
    puts "Jesteś w NotesController#create"
  end

  def edit
    puts "Jesteś w NotesController#edit"
  end

  def destroy
    puts "Jesteś w NotesController#destroy"
  end

end

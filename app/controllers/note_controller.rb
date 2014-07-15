class NoteController < ApplicationController
  before_action :authenticate_user!

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find params[:id]
  end
end

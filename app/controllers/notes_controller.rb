class NotesController < ApplicationController
  before_action :set_note, only: %i[show edit update destroy]

  def index
    @notes = Note.all
  end

  def show; end

  def create
    @note = Note.new(note_params)

    if @note.save
      respond_to do |format|
        format.html { redirect_to notes_path, notice: 'Note was successfully created.' }
        format.turbo_stream
      end
    else
      render :new
    end
  end

  def edit; end

  def update
    if @note.update(note_params)
      respond_to do |format|
        format.html { redirect_to notes_path, notice: 'Note was successfully updated.' }
        format.turbo_stream
      end
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_path, notice: 'Note was successfully destroyed.' }
      format.turbo_stream
    end
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :content)
  end
end

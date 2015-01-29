class NotesController<ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(params.require(:note).permit(:title, :body))
    @note.save
    render json: @note
  end

  def show
    render json: Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.update(params.require(:note).permit(:title, :body))
    render json: @note
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    render json: @note
  end

end

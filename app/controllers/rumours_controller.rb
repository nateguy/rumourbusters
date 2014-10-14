class RumoursController < ApplicationController
  before_action :set_rumour, only: [:show, :edit, :update, :destroy]

  # GET /rumours
  def index
    @rumours = Rumour.all
  end

  # GET /rumours/1
  def show
    @user_rumour = @rumour.user_rumours.new(rumour_id: params[:id])
  end

  # GET /rumours/new
  def new
    @rumour = Rumour.new
  end

  # GET /rumours/1/edit
  def edit
  end

  # POST /rumours
  def create

    @rumour = Rumour.new(rumour_params)
    # puts params[:rumour][:media]
    # puts params[:media]
    # media_file_name = params[:rumour][:media]
    # name = media_file_name.original_filename
    # content = media_file_name.content_type
    puts "testestest"
    puts params[:rumour][:media].content_type
    puts MIME::Types.type_for(params[:rumour][:media].original_filename)

    if params[:rumour][:media].content_type == 'application/octet-stream'
      mime_type = MIME::Types.type_for(params[:rumour][:media].original_filename)
      puts "mine type"
      puts mime_type
      puts mime_type.first
      params[:rumour][:media].content_type = mime_type.first if mime_type.first
    end
    @mimetype = MIME::Types.type_for(params[:rumour][:media].original_filename)
    if defined? mime_type.first
      @first = mime_type.first
    else
      @first = 0
    end
    #puts MIME::Types.type_for(name).to_s
    #file.content_type = MIME::Types.type_for(name).to_s
    #puts file
    # @rumour.media = file

    if @rumour.save
      #redirect_to @rumour, notice: 'Rumour was successfully created.'
    else
      render :new
    end
  end


  # PATCH/PUT /rumours/1
  def update
    if @rumour.update(rumour_params)
      redirect_to @rumour, notice: 'Rumour was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rumours/1
  def destroy
    @rumour.destroy
    redirect_to rumours_url, notice: 'Rumour was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rumour
      @rumour = Rumour.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rumour_params

      params.require(:rumour).permit(:description, :media, :title, :longitude, :latitude)

    end

    def set_mime_type(file)
      if file.present? && file.content_type == 'application/octet-stream'
        mime_type = MIME::Types.type_for(file.original_filename)
        file.content_type = mime_type.first.content_type if mime_type.first
      end
      file
    end
end

class Admin::MenuSectionsController < Admin::BaseController
  before_action :current_user
  before_action :set_menu_section, only: [:show, :edit, :update, :destroy]

  # GET /menu_sections
  # GET /menu_sections.json
  def index
    @menu_sections = MenuSection.all.group_by(&:category)
  end

  # GET /menu_sections/1
  # GET /menu_sections/1.json
  def show
  end

  # GET /menu_sections/new
  def new
    @menu_section = MenuSection.new
  end

  # GET /menu_sections/1/edit
  def edit
  end

  # POST /menu_sections
  # POST /menu_sections.json
  def create
    @menu_section = MenuSection.new(menu_section_params)

    respond_to do |format|
      if @menu_section.save
        format.html { redirect_to admin_menu_sections_path, notice: 'Menu section was successfully created.' }
        format.json { render :show, status: :created, location: @menu_section }
      else
        format.html { render :new }
        format.json { render json: @menu_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_sections/1
  # PATCH/PUT /menu_sections/1.json
  def update
    respond_to do |format|
      if @menu_section.update(menu_section_params)
        format.html { redirect_to admin_menu_sections_path, notice: "Menu section #{@menu_section.area} was successfully updated." }
        format.json { render :show, status: :ok, location: @menu_section }
      else
        format.html { render :edit }
        format.json { render json: @menu_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_sections/1
  # DELETE /menu_sections/1.json
  def destroy
    @menu_section.destroy
    respond_to do |format|
      format.html { redirect_to admin_menu_sections_path, notice: 'Menu section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_section
      @menu_section = MenuSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_section_params
      params.require(:menu_section).permit(:area, :content, :category)
    end
end

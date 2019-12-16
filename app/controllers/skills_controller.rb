class SkillsController < OpenReadController
  before_action :set_skill, only: [:show, :update, :destroy]

  # GET /skills
  def index
    @skills = Skill.all

    render json: @skills
  end

  # GET /skills/1
  def show
    # possible remobe show from before action; change @kill to Skill.find[params[:id]]
    render json: @skill
  end

  # POST /skills
  def create
    @skill = current_user.skills.build(skill_params)

    if @skill.save
      render json: @skill, status: :created, location: @skill
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skills/1
  def update
    if @skill.update(skill_params)
      render json: @skill
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skills/1
  def destroy
    @skill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = current_user.skills.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skill_params
      params.require(:skill).permit(:name, :units, :currentUnit, :maxUnit, :user_id)
    end
end

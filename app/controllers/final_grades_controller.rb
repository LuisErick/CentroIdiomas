class FinalGradesController < ApplicationController
  before_action :set_final_grade, only: [:show, :edit, :update, :destroy]

  # GET /final_grades
  # GET /final_grades.json
  def index
    @final_grades = FinalGrade.all
  end

  # GET /final_grades/1
  # GET /final_grades/1.json
  def show
  end

  # GET /final_grades/new
  def new
    @final_grade = FinalGrade.new
  end

  # GET /final_grades/1/edit
  def edit
  end

  # POST /final_grades
  # POST /final_grades.json
  def create
    @final_grade = FinalGrade.new(final_grade_params)

    respond_to do |format|
      if @final_grade.save
        format.html { redirect_to @final_grade, notice: 'Final grade was successfully created.' }
        format.json { render :show, status: :created, location: @final_grade }
      else
        format.html { render :new }
        format.json { render json: @final_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /final_grades/1
  # PATCH/PUT /final_grades/1.json
  def update
    respond_to do |format|
      if @final_grade.update(final_grade_params)
        format.html { redirect_to @final_grade, notice: 'Final grade was successfully updated.' }
        format.json { render :show, status: :ok, location: @final_grade }
      else
        format.html { render :edit }
        format.json { render json: @final_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /final_grades/1
  # DELETE /final_grades/1.json
  def destroy
    @final_grade.destroy
    respond_to do |format|
      format.html { redirect_to final_grades_url, notice: 'Final grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_final_grade
      @final_grade = FinalGrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def final_grade_params
      params.require(:final_grade).permit(:matriculation_id, :value, :state)
    end
end

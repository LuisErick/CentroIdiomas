class MatriculationExamsController < ApplicationController
  before_action :set_matriculation_exam, only: [:show, :edit, :update, :destroy]

  # GET /matriculation_exams
  # GET /matriculation_exams.json
  def index
    @matriculation_exams = MatriculationExam.all
  end

  # GET /matriculation_exams/1
  # GET /matriculation_exams/1.json
  def show
  end

  # GET /matriculation_exams/new
  def new
    @matriculation_exam = MatriculationExam.new
  end

  # GET /matriculation_exams/1/edit
  def edit
  end

  # POST /matriculation_exams
  # POST /matriculation_exams.json
  def create
    @matriculation_exam = MatriculationExam.new(matriculation_exam_params)

    respond_to do |format|
      if @matriculation_exam.save
        format.html { redirect_to @matriculation_exam, notice: 'Matriculation exam was successfully created.' }
        format.json { render :show, status: :created, location: @matriculation_exam }
      else
        format.html { render :new }
        format.json { render json: @matriculation_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matriculation_exams/1
  # PATCH/PUT /matriculation_exams/1.json
  def update
    respond_to do |format|
      if @matriculation_exam.update(matriculation_exam_params)
        format.html { redirect_to @matriculation_exam, notice: 'Matriculation exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @matriculation_exam }
      else
        format.html { render :edit }
        format.json { render json: @matriculation_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matriculation_exams/1
  # DELETE /matriculation_exams/1.json
  def destroy
    @matriculation_exam.destroy
    respond_to do |format|
      format.html { redirect_to matriculation_exams_url, notice: 'Matriculation exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matriculation_exam
      @matriculation_exam = MatriculationExam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matriculation_exam_params
      params.require(:matriculation_exam).permit(:matriculation_id, :teacher_id, :institution)
    end
end

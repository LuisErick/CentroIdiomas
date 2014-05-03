class UnicaStudentsController < ApplicationController
  before_action :set_unica_student, only: [:show, :edit, :update, :destroy]

  # GET /unica_students
  # GET /unica_students.json
  def index
    @unica_students = UnicaStudent.all
  end

  # GET /unica_students/1
  # GET /unica_students/1.json
  def show
  end

  # GET /unica_students/new
  def new
    @unica_student = UnicaStudent.new
  end

  # GET /unica_students/1/edit
  def edit
  end

  # POST /unica_students
  # POST /unica_students.json
  def create
    @unica_student = UnicaStudent.new(unica_student_params)

    respond_to do |format|
      if @unica_student.save
        format.html { redirect_to @unica_student, notice: 'Unica student was successfully created.' }
        format.json { render :show, status: :created, location: @unica_student }
      else
        format.html { render :new }
        format.json { render json: @unica_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unica_students/1
  # PATCH/PUT /unica_students/1.json
  def update
    respond_to do |format|
      if @unica_student.update(unica_student_params)
        format.html { redirect_to @unica_student, notice: 'Unica student was successfully updated.' }
        format.json { render :show, status: :ok, location: @unica_student }
      else
        format.html { render :edit }
        format.json { render json: @unica_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unica_students/1
  # DELETE /unica_students/1.json
  def destroy
    @unica_student.destroy
    respond_to do |format|
      format.html { redirect_to unica_students_url, notice: 'Unica student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unica_student
      @unica_student = UnicaStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unica_student_params
      params.require(:unica_student).permit(:student_id, :faculty_id, :grade_id)
    end
end

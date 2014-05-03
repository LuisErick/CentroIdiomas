class FinalCertificationsController < ApplicationController
  before_action :set_final_certification, only: [:show, :edit, :update, :destroy]

  # GET /final_certifications
  # GET /final_certifications.json
  def index
    @final_certifications = FinalCertification.all
  end

  # GET /final_certifications/1
  # GET /final_certifications/1.json
  def show
  end

  # GET /final_certifications/new
  def new
    @final_certification = FinalCertification.new
  end

  # GET /final_certifications/1/edit
  def edit
  end

  # POST /final_certifications
  # POST /final_certifications.json
  def create
    @final_certification = FinalCertification.new(final_certification_params)

    respond_to do |format|
      if @final_certification.save
        format.html { redirect_to @final_certification, notice: 'Final certification was successfully created.' }
        format.json { render :show, status: :created, location: @final_certification }
      else
        format.html { render :new }
        format.json { render json: @final_certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /final_certifications/1
  # PATCH/PUT /final_certifications/1.json
  def update
    respond_to do |format|
      if @final_certification.update(final_certification_params)
        format.html { redirect_to @final_certification, notice: 'Final certification was successfully updated.' }
        format.json { render :show, status: :ok, location: @final_certification }
      else
        format.html { render :edit }
        format.json { render json: @final_certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /final_certifications/1
  # DELETE /final_certifications/1.json
  def destroy
    @final_certification.destroy
    respond_to do |format|
      format.html { redirect_to final_certifications_url, notice: 'Final certification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_final_certification
      @final_certification = FinalCertification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def final_certification_params
      params.require(:final_certification).permit(:final_grade_id)
    end
end

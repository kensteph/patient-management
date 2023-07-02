class PatientWorksController < ApplicationController
  before_action :set_patient_work, only: %i[ show edit update destroy ]

  # GET /patient_works or /patient_works.json
  def index
    @patient_works = PatientWork.all
  end

  # GET /patient_works/1 or /patient_works/1.json
  def show
  end

  # GET /patient_works/new
  def new
    @patient_work = PatientWork.new
  end

  # GET /patient_works/1/edit
  def edit
  end

  # POST /patient_works or /patient_works.json
  def create
    @patient_work = PatientWork.new(patient_work_params)

    respond_to do |format|
      if @patient_work.save
        format.html { redirect_to patient_work_url(@patient_work), notice: "Patient work was successfully created." }
        format.json { render :show, status: :created, location: @patient_work }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_works/1 or /patient_works/1.json
  def update
    respond_to do |format|
      if @patient_work.update(patient_work_params)
        format.html { redirect_to patient_work_url(@patient_work), notice: "Patient work was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_work }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_works/1 or /patient_works/1.json
  def destroy
    @patient_work.destroy

    respond_to do |format|
      format.html { redirect_to patient_works_url, notice: "Patient work was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_work
      @patient_work = PatientWork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_work_params
      params.require(:patient_work).permit(:description, :estimation, :discount, :patient_id)
    end
end

class CkeditorTestsController < ApplicationController
  before_action :set_ckeditor_test, only: [:show, :edit, :update, :destroy]

  # GET /ckeditor_tests
  # GET /ckeditor_tests.json
  def index
    @ckeditor_tests = CkeditorTest.all
  end

  # GET /ckeditor_tests/1
  # GET /ckeditor_tests/1.json
  def show
  end

  # GET /ckeditor_tests/new
  def new
    @ckeditor_test = CkeditorTest.new
  end

  # GET /ckeditor_tests/1/edit
  def edit
  end

  # POST /ckeditor_tests
  # POST /ckeditor_tests.json
  def create
    @ckeditor_test = CkeditorTest.new(ckeditor_test_params)

    respond_to do |format|
      if @ckeditor_test.save
        format.html { redirect_to @ckeditor_test, notice: 'Ckeditor test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ckeditor_test }
      else
        format.html { render action: 'new' }
        format.json { render json: @ckeditor_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ckeditor_tests/1
  # PATCH/PUT /ckeditor_tests/1.json
  def update
    respond_to do |format|
      if @ckeditor_test.update(ckeditor_test_params)
        format.html { redirect_to @ckeditor_test, notice: 'Ckeditor test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ckeditor_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ckeditor_tests/1
  # DELETE /ckeditor_tests/1.json
  def destroy
    @ckeditor_test.destroy
    respond_to do |format|
      format.html { redirect_to ckeditor_tests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ckeditor_test
      @ckeditor_test = CkeditorTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ckeditor_test_params
      params.require(:ckeditor_test).permit(:title, :content)
    end
end

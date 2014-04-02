class InboundEmailsController < ApplicationController
  before_action :set_inbound_email, only: [:show, :edit, :update, :destroy]

  # GET /inbound_emails
  # GET /inbound_emails.json
  def index
    @inbound_emails = InboundEmail.all
  end

  # GET /inbound_emails/1
  # GET /inbound_emails/1.json
  def show
  end

  # GET /inbound_emails/new
  def new
    @inbound_email = InboundEmail.new
  end

  # GET /inbound_emails/1/edit
  def edit
  end

  # POST /inbound_emails
  # POST /inbound_emails.json
  def create
    @inbound_email = InboundEmail.new(inbound_email_params)

    respond_to do |format|
      if @inbound_email.save
        format.html { redirect_to @inbound_email, notice: 'Inbound email was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inbound_email }
      else
        format.html { render action: 'new' }
        format.json { render json: @inbound_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inbound_emails/1
  # PATCH/PUT /inbound_emails/1.json
  def update
    respond_to do |format|
      if @inbound_email.update(inbound_email_params)
        format.html { redirect_to @inbound_email, notice: 'Inbound email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inbound_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inbound_emails/1
  # DELETE /inbound_emails/1.json
  def destroy
    @inbound_email.destroy
    respond_to do |format|
      format.html { redirect_to inbound_emails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inbound_email
      @inbound_email = InboundEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inbound_email_params
      params.require(:inbound_email).permit(:text, :html, :to, :from, :subject)
    end
end

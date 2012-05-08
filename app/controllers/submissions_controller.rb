class SubmissionsController < ApplicationController

  # GET /submissions
  def index
    @submissions = Submission.all
    respond_with @submissions
  end

  # GET /submissions/1
  def show
    @submission = Submission.find(params[:id])
    respond_with @submission
  end

  # GET /submissions/new
  def new
    @submission = Submission.new
    respond_with @submission
  end

  # GET /submissions/1/edit
  def edit
    @submission = Submission.find(params[:id])
  end

  # POST /submissions
  def create
    @submission = Submission.create(params[:submission])
    respond_with @submission
  end

  # PUT /submissions/1
  def update
    @submission = Submission.find(params[:id])
    @submission.update_attributes(params[:submission])
    respond_with @submission
  end

  # DELETE /submissions/1
  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    respond_with @submission
  end
end

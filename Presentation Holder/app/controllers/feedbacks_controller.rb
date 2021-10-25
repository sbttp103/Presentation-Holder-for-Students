class FeedbacksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_feedback, only: %i[ show edit update destroy ]
  before_action :set_presentation, only: [:create, :edit, :show, :update, :destroy]


  def create
    @feedback = @presentation.feedbacks.create(params[:feedback].permit(:feedback, :presentation_id))
    @feedback.user_id = current_user.id

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to presentation_path(@presentation) }
        format.js # renders create.js.erb
      else
        format.html { redirect_to presentation_path(@presentation), notice: "Feedback did not save. Please try again."}
        format.js
      end
    end
  end

  def new
  end


  def destroy
    @feedback = @presentation.feedbacks.find(params[:id])
    @feedback.destroy
    redirect_to presentation_path(@presentation)
  end

  def edit
    @presentation = Presentation.find(params[:presentation_id])
    @feedback = @presentation.feedbacks.find(params[:id])
  end

  def update
    @feedback = @presentation.feedbacks.find(params[:id])
     respond_to do |format|
      if @feedback.update(feedback_params)
        format.html { redirect_to presentation_path(@presentation), notice: 'Feedback was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  private

  def set_presentation
    @presentation = Presentation.find(params[:presentation_id])
  end

  def set_feedback
    @feedback = Feedback.find(params[:id])
  end

  def feedback_params
    params.require(:feedback).permit(:feedback)
  end
end

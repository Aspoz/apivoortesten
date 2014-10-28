class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :update, :destroy]
  respond_to :json

  def index
    @subjects = Subject.all
  end

  def show
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      respond_with(@subject, status: :created)
    else
      respond_with(@subject.errors, status: :unprocessable_entity)
    end
  end

  def update
    if @subject.update(subject_params)
      respond_with(@subject)
    else
      respond_with(@subject.errors, status: :unprocessable_entity)
    end
  end

  def destroy
    @subject.destroy
    respond_with(@subject, status: :destroyed)
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:title)
  end
end

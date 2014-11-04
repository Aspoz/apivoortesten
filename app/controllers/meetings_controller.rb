class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :update, :destroy]
  respond_to :json

  def index
    @meetings = Meeting.all
  end

  def show
  end

  def create
    @meeting = Meeting.new(meeting_params)

    if @meeting.save
      respond_with(@meeting, status: :created)
    else
      respond_with(@meeting.errors, status: :unprocessable_entity)
    end
  end

  def update
    if @meeting.update(meeting_params)
      respond_with(@meeting)
    else
      respond_with(@meeting.errors, status: :unprocessable_entity)
    end
  end

  def destroy
    @meeting.destroy
    respond_with(@meeting, status: :destroyed)
  end

  private

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:title)
  end
end

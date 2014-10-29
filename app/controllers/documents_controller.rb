class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :update, :destroy]
  respond_to :json

  def index
    @documents = Document.all
  end

  def show
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      respond_with(@document, status: :created)
    else
      respond_with(@document.errors, status: :unprocessable_entity)
    end
  end

  def update
    if @document.update(document_params)
      respond_with(@document)
    else
      respond_with(@document.errors, status: :unprocessable_entity)
    end
  end

  def destroy
    @document.destroy
    respond_with(@document, status: :destroyed)
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:title)
  end
end

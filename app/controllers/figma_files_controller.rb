class FigmaFilesController < ApplicationController

  def show
    unless params.has_key?(:id) 
      return render :json => {:error => "not-found"}.to_json, :status => 404
    end
    @file = FigmaFile.find(params[:id])
    render json: @file
  end
end

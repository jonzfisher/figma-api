class FigmaFilesController < ApplicationController

  def show
    unless params.has_key?(:id)
      return render :json => {:error => "not-found"}.to_json, :status => 404
    end
    @file = FigmaFile.find(params[:id])
    render json: @file
  end
  def nodes
    unless params.has_key?(:id)
      return render :json => {:error => "not-found"}.to_json, :status => 404
    end

    @nodes = FigmaFile.nodes(params[:id])
    if params[:sort].present?
      if params[:sort] == "desc"
        @nodes.sort!{ |node_x, node_y| node_x.name <=> node_y.name }
      elsif params[:sort] == "asc"
        @nodes.sort!{ |node_x, node_y| node_y.name <=> node_x.name }
      end 
    end
    
    if params[:filter].present?
      @nodes.select!{ |node| node.name.include? params[:filter] }
    end

    render json: @nodes
  end
  
  def search
    unless params.has_key?(:id)
      return render :json => {:error => "not-found"}.to_json, :status => 404
    end
    @nodes = FigmaFile.nodes(params[:id])
    search = Search.new(sample_space: @nodes, value: params[:query])
    search.save!
    @results = search.results
    render json: @results
  end
end

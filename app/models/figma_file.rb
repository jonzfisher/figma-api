class FigmaFile < Node
  attr_accessor :components,
    :document,
    :last_modified,
    :name,
    :schema_version,
    :thumbnail_url
  CACHE_DEFAULTS = { expires_in: 7.days, force: false }

  def self.find(id)
    response = Request.get("files/#{id}", CACHE_DEFAULTS)
    FigmaFile.new(response)
  end

  def initialize(args = {})
    super(args)
  end

  def self.nodes(id)
    response = Request.get("files/#{id}", CACHE_DEFAULTS)
    @nodes = []
    collect_all_children_nodes(response["document"])
    @nodes
  end

  def self.collect_all_children_nodes(node)
    if node.is_a?(Hash)
      @nodes << Node.new(node)
      if node.has_key?("children")
        node["children"].each do |child|
          collect_all_children_nodes(child)
        end
      end
    end
  end

end

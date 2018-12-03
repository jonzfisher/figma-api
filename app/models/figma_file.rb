class FigmaFile < Node
  attr_accessor :components,
    :document,
    :last_modified,
    :name,
    :schema_version,
    :thumbnail_url 
  CACHE_DEFAULTS = { expires_in: 7.days, force: false }

  def self.find(id)
    response = Request.get("files/#{id}/", CACHE_DEFAULTS)
    FigmaFile.new(response)
  end

  def initialize(args = {})
    super(args)
  end


end

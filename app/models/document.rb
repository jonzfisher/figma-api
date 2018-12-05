class Document < Node
  attr_accessor :children

  def initialize(args = {})
    super(args)
    self.children = args.fetch("children", []).map{|child| Node.new(child)}
  end
end

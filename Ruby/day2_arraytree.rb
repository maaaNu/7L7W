a = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
#a.each_slice(4) {|it| p it}

class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = children
    @name = name
  end

  def initialize(structure = {})
    @node_name = structure.keys[0]
    @children = []
    @children.concat structure[@node_name].map {|child| Tree.new(child[0] => child[1])} unless children.nil?
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new({'grandpa' =>{'dad' =>{'child 1' => {},'child 2' => {}},'uncle' =>{'child 3' => {}, 'child 4' => {}}}})
#ruby_tree.visit_all {|node| puts node.node_name}

require_relative '../../../directed_graph'

def dfs(graph, id)
  stack = []
  stack.push(id)
  loop do
    break if stack.empty?
    vertex = stack.pop
    unless graph.vertices[vertex].visited
      graph.vertices[vertex].visited = true
      graph.vertices[vertex].neighbours.each do |ele|
        stack.push(ele)
      end
    end
  end
end

graph = DirectedGraph.new('SCC1')
dfs(graph, 1)
p graph

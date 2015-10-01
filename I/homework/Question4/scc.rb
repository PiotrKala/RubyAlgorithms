require_relative '../../../directed_graph'

time = 0
s = 0

def dfs_loop(graph)
  graph.reverse_each do |ele|
    unless graph.vertices[ele].visited
      s = ele
      dfs(graph, ele)
    end
  end 
end

def dfs(graph, id)
  graph.vertices[id].visited = true
  graph.vertices[id].leader = s
  graph.vertices[vertex].neighbours.each do |ele|
    dfs(graph, ele) unless graph.vertices[ele].visited
  end
  t += 1
  graph.vertices[id].value = t
end

graph = DirectedGraph.new('SCC1')
dfs(graph, 1)
p graph

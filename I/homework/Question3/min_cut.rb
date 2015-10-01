require_relative '../../../graph'

def random_edge(graph)
  u = graph.vertices.keys.sample
  v = graph.vertices[u].sample
  { u: u, v: v }
end

def remove_edge(graph, u, v)

  graph.vertices[u].delete(v)
  graph.vertices[v].delete(u)
  graph.vertices[u] += graph.vertices[v]
  graph.vertices.delete(v)

  graph.vertices.each do |key, array|
    array.each_with_index do |vertex, index|
       array[index] = u if vertex == v
     end
  end
end

def min_cut
  graph = Graph.new('kargerMinCut')

  loop do
    edge = random_edge(graph)
    remove_edge(graph, edge[:u], edge[:v])
    return graph.vertices.first.last.count if graph.vertices.length == 2
  end
end

min_cuts = {}
max = 0
max_index = 0
i = 0
10000.times do
  i += 1
  solution = min_cut
  min_cuts[solution] += 1 if min_cuts.include?(solution)
  min_cuts[solution] = 1 unless min_cuts.include?(solution)
  if max < min_cuts[solution]
    max = min_cuts[solution]
    max_index = solution
  end
end

p min_cuts.sort_by { |key, value| value}.to_h
p max
p max_index

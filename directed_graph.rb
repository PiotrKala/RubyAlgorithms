require_relative 'helpers'

class Vertex
  attr_accessor :visited, :neighbours, :value

  def initialize
    @neighbours = []
    @value = -1
    @visited = false 
    @leader = -1
  end
end

class DirectedGraph
  include Helpers

  attr_accessor :vertices

  def initialize(filename)
    @vertices = {}
    graph_from_file filename
  end

  def graph_from_file(filename)
    lines = File.readlines(filename)
    lines.each do |ele|
      vertex_start = ele.split.first.to_i
      vertex_end = ele.split.last.to_i
      unless @vertices.keys.include? vertex_start
        vertex = Vertex.new
        @vertices[vertex_start] = vertex
      end
      vertex = @vertices[vertex_start]
      vertex.neighbours.push vertex_end
    end
  end
end

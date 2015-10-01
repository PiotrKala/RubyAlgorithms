require_relative 'helpers'

class Graph
  include Helpers

  attr_accessor :vertices

  def initialize(filename)
    @vertices = {}
    graph_from_file(filename)
  end

  def add_vertex(vertex_id, vertex_adjacent_list)
    @vertices[vertex_id.to_i] = vertex_adjacent_list.map { |ele| ele.to_i }
  end

  def graph_from_file(filename)
    lines = File.readlines(filename)
    lines.map! { |line| add_vertex(line.split[0], line.split[1..-1]) }
  end
end

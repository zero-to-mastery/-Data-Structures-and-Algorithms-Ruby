
class Graph
  def initialize
    @number_of_nodes = 0
    @adjacent_list = {}
  end

  def add_vertex(node)
    @adjacent_list[node] = []
    @number_of_nodes += 1
  end

  def add_edge(node1, node2)
    # Uniderected Graph
    @adjacent_list[node1] << node2
    @adjacent_list[node2] << node1
  end

  def show_connections
    all_nodes = @adjacent_list.keys
    all_nodes.each do |node|
      puts"#{node} --> #{@adjacent_list[node].join(' ')}"
    end
  end
end

my_graph = Graph.new
my_graph.add_vertex('0')
my_graph.add_vertex('1')
my_graph.add_vertex('2')
my_graph.add_vertex('3')
my_graph.add_vertex('4')
my_graph.add_vertex('5')
my_graph.add_vertex('6')
my_graph.add_edge('3', '1');
my_graph.add_edge('3', '4');
my_graph.add_edge('4', '2');
my_graph.add_edge('4', '5');
my_graph.add_edge('1', '2');
my_graph.add_edge('1', '0');
my_graph.add_edge('0', '2');
my_graph.add_edge('6', '5');

my_graph.show_connections

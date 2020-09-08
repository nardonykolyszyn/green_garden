# frozen_string_literal: true

# Trees can be treated as graphs that perform very well for multidimensional operations
module GreenGarden
  module Graph
    # Pass any Tree you want to travel into
    # Additionally you will need to pass a new activity_tracker to record information
    def travel_graph(graph, current_activity)
      graph.each do |node, children|
        # Activity Tracker traits:
        # shifts => Number of needed shifts to walk through the Tree.
        # parent_nodes => All parent_nodes with their respective children structure type.
        # children_nodes => Values of children items
        current_activity.shifts += 1
        current_activity.parent_nodes[node] = children.class
        current_activity.children_nodes << record_children_as(children)

        # When children exist we assume this node is a Hash otherwise it will be an Array.
        if children.is_a?(Hash)
          travel_graph(children, current_activity)
        elsif children.is_a?(Array)
          children.each { |child| travel_graph(child, current_activity) if child.is_a?(Hash) }
        end
      end
      current_activity
    end

    def record_children_as(children)
      case children.class
      when String
        children
      when Array
        children.flatten.map(&:values)
      when Hash
        children.values
      end
    end
  end
end

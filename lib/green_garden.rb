# frozen_string_literal: true

require 'green_garden/comparer'
require 'green_garden/graph'
require 'green_garden/loader'
require 'green_garden/models/activity_tracker'
require 'green_garden/version'

module GreenGarden
  class Tree
    extend Loader
    extend Graph
    extend Comparer
    class << self
      def diff_between(tree_one, tree_two)
        tree_one = load_json(tree_one)
        tree_two = load_json(tree_two)

        activity_one = travel_graph(tree_one, GreenGarden::ActivityTracker.new)
        activity_two = travel_graph(tree_two, GreenGarden::ActivityTracker.new)

        compare_activities(activity_one, activity_two)
      rescue Errno::ENOENT
        'Trees could not be loaded, please check files paths'
      end
    end
  end
end

# frozen_string_literal: true

module GreenGarden
  module Comparer
    def compare_activities(activity_one, activity_two)
      (activity_one.shifts == activity_two.shifts) &&
        (activity_one.parent_nodes == activity_two.parent_nodes) &&
        (activity_one.children_nodes == activity_two.children_nodes)
    end
  end
end

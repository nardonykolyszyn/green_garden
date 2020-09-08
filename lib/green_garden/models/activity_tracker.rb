# frozen_string_literal: true

module GreenGarden
  class ActivityTracker < Struct.new(:shifts, :parent_nodes, :children_nodes)
    def initialize(*)
      super
      self.shifts ||= 0
      self.parent_nodes ||= {}
      self.children_nodes ||= []
    end
  end
end

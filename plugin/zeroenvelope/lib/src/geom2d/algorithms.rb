# -*- frozen_string_literal: true -*-
#
#--
# geom2d - 2D Geometric Objects and Algorithms
# Copyright (C) 2018 Thomas Leitner <t_leitner@gmx.at>
#
# This software may be modified and distributed under the terms
# of the MIT license.  See the LICENSE file for details.
#++

module Geom2D

  # This module contains helper functions as well as classes implementing algorithms.
  module Algorithms

    # Determines whether the three points form a counterclockwise turn.
    #
    # Returns
    #
    # * +1 if the points a -> b -> c form a counterclockwise angle,
    # * -1 if the points a -> b -> c from a clockwise angle, and
    # *  0 if the points are collinear.
    def self.ccw(a, b, c)
      Utils.float_compare((b.x - a.x) * (c.y - a.y), (c.x - a.x) * (b.y - a.y))
    end

  end

end

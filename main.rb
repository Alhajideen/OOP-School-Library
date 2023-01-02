#!/usr/bin/env ruby

require './app'
require './init'

class Main
  include Init
  def initialize
    @inst = App.new
    init
  end
end

obj = Main.new
obj.init

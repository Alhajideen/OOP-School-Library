#!/usr/bin/env ruby

require './app'
require './requests'
require './init'

class Main
  include Requests
  include Init
  def initialize
    @inst = App.new
    init
  end
end

obj = Main.new
obj.init

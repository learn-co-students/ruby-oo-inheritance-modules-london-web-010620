require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require './fancy_dance.rb'

class Dancer
    #include enables us to access all the methods contained within the module specified
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end
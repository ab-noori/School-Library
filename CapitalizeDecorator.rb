require_relative "BaseDecorator.rb"

class CapitalizeDecorator < BaseDecorator
    def correct_name
        super.capitalize
    end
end
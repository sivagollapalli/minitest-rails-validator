require 'minitest/autorun'
require 'mongoid'
require 'mongoid-minitest'


class MinitestRailsValidator < MiniTest::Spec
  include Mongoid::Matchers

  def self.generate_specs_for(model)
    presence_of(model, fetch_presence_attributes(model))
  end

  def self.fetch_presence_attributes(model)
    model.validators.select{|validator| validator.class == Mongoid::Validations::PresenceValidator}.collect(&:attributes).flatten
  end

  def self.presence_of(model, attributes=[])
    attributes.each do |attr|
      it "should be invalid if #{attr} is empty" do
        model.must have_field("#{attr}")
      end
    end
  end
end

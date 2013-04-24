require "spec_helper"
require "zombie"

describe Zombie do 
	it "is named Rose" do 
		zombie = Zombie.new
		zombie.name.should == 'Rose'
	end

	it "has no brains" do
		zombie = Zombie.new
		zombie.brains.should < 1
	end
end


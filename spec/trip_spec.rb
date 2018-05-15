require 'spec_helper'

describe 'trip.rb prompts the user for the right information' do
  it 'outputs a welcome message that prompts the user for input' do
    allow($stdout).to receive(:puts)
    allow(self).to receive(:gets).and_return("California")

    expect($stdout).to receive(:puts).with(/where/i), "Make sure something is printed to the console that outputs a prompt for *where* the user would like to stay on their trip"

    run_file("./trip.rb")
  end

  it 'captures the user input of where they would like to stay and sets it equal to a variable called stay, with the location capitalized appropriately' do
    allow($stdout).to receive(:puts)

    expect(self).to receive(:gets).and_return("california").at_least(:once)

    stay = get_variable_from_file("./trip.rb", "stay")

    expect(stay).to eq("California")
  end


  it 'captures the user input of what they would like to eat and sets it equal to a variable called eat' do
    allow($stdout).to receive(:puts)

    expect(self).to receive(:gets).and_return("pizza").at_least(:once)
    eat = get_variable_from_file("./trip.rb", "eat")

    expect(eat).to eq("pizza")
  end

  it 'captures the user input of how many nights they would like to stay and sets it equal to a variable called nights' do
    allow($stdout).to receive(:puts)

    expect(self).to receive(:gets).and_return("4").at_least(:once)
    nights = get_variable_from_file("./trip.rb", "nights")

    expect(nights).to eq("4")
  end
end


describe 'trip.rb outputs a final itinerary, interpolating the provided data' do
  it "returns the custom trip itinerary, interpolating the user's destination, food choice and number of days as strings" do
      allow($stdout).to receive(:puts)
      allow(self).to receive(:gets).and_return("California", "pizza", "4")

      output = capture_puts{ run_file("trip.rb") }

      expect(output).to include("California")
      expect(output).to include("pizza")
      expect(output).to include("4")
    end
end

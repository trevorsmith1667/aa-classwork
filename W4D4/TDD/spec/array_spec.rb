require "rspec"
require "array"

describe Array do 
    let(:my_arr) {double("Array", [1, 2, 1, 3, 3])}
    describe "#my_uniq" do 
        it "removes duplicates" do 
            expect(my_uniq).to receive
                #my_arr.to eq([1, 2, 3])
        end 
    end 
end 
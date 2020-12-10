require "rspec"
require "array"

describe Array do
    let(:my_arr) {[1, 2, 1, 3, 3]}
    describe "#my_uniq" do
        it "checks array validity" do
            expect(my_arr).to be_a(Array)
        end 
        it "removes duplicates" do
            expect(my_arr).to contain_exactly(1, 2, 1, 3, 3) 
            expect(my_uniq(my_arr).uniq).to eq([1, 2, 3])
        end 
    end 

    describe "#two_sum" do
        it "when given any 2 elements whose sum amounts to 0, returns pairs in a inner array of 2D array"
        end
    
    end 
end 

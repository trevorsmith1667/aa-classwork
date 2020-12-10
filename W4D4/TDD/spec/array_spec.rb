require "rspec"
require "array"

describe Array do
    let(:my_arr) {[1, 2, 1, 3, 3]}
    let(:my_neggy) {[-1, 1, 2, -2, 3,-3]}
    let(:my_bupkis) {[-1, 0, 80, -75, 4, 10]}
    let(:my_grill) {[
            [0, 1, 2],
            [0, 1, 2], 
            [0, 1, 2]
            ]}

    let(:my_enron_stock) {[2, 1, 100, 4, 209 ]}
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
        it "when given any 2 elements whose sum amounts to 0, returns pairs in a inner array of 2D array" do
          expect(two_sum(my_neggy)).to eq([[-1,1], [-2,2], [-3,3]])
        end

        it "should return an empty array when no pairs's sum equals zero" do 
            expect(two_sum(my_bupkis)).to eq([])
        end 
    end 
    
    describe "#my_transpose" do 
      it "should return a transposed grid where rows and columns are reversed" do 
      expect(my_transpose(my_grill)).to eq([[0,0,0],[1,1,1],[2,2,2]])
      end
    end

    describe "#stock_picker" do 
      it "should return a pair of indices representing days that maximizes stock profit" do
        expect(stock_picker(my_enron_stock)).to eq([1,4]) 
      end
    end
end 

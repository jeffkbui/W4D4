require 'rspec'
require '4'

RSpec.describe Array do
  describe "Array#uniq" do
    subject(:arr) { [1, 2, 1, 3, 3] }
    
    it 'should remove duplicates from an array' do
      expect(arr.uniq).to eq([1, 2, 3])
    end

    it 'return an array with unique elements' do
      expect(arr.uniq).to eq([1, 2, 3])
    end
  end

  describe "Array#two_sum" do
    subject(:arr) { [-1, 0, 2, -2, 1] }

    it "should return an array of index pairs whose values sum to zero" do
      expect(arr.two_sum).to eq([[0,4] ,[2,3]])
    end
  end

  describe "Array#my_transpose" do
    subject(:arr) { [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ] }

      it 'should return a 2D array where the rows become columns and the columns become rows' do
        expect(arr.my_transpose).to eq( [ [0, 3, 6], [1, 4, 7], [2, 5, 8] ] )
      end
  end

  describe "Array#stock_picker" do
    
    it "should return the indices whose values yield the largest difference" do
      subject(:arr) { [0,1,2,3,4] }
      expect(arr.stock_picker).to eq([0, 4])
    end

    it "should not return a difference unless the lower value occurs first" do
      subject(:arr) { [4,1,2,3,0] }
      expect(arr.stock_picker).to eq([1, 3])
    end
  end


end
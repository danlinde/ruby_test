require 'inject'

describe Array do

        it 'should return a sum of elements' do
                [1, 2, 3, 4].insect{ |memo, elem| memo + elem }.should eq 10
        end

        it 'should return a product of elements' do
                [1, 2, 3, 4].insect{ |memo, elem| memo * elem }.should eq 24
        end

        it 'should combine the elements of a string' do
                ["1", "2", "3", "4"].insect{ |memo, elem| memo + elem }.should eq "1234"
        end
end
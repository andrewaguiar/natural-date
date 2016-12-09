require 'spec_helper'

describe NaturalDateExpression do
  [[ '1/4;6 do 12 de 2017', [{:day=>[1], :month=>[4], :year => [2016]}, {:day=>[6], :month=>[12], :year=>[2017]}] ],
   [ "1/4\n6 do 12", [{:day=>[1], :month=>[4], :year => [2016]}, {:day=>[6], :month=>[12], :year=>[2016]}]] ].each do |test_case|

      it "converts multiple dates '#{test_case.first} to expression map '#{test_case.last}'" do
        factory = NaturalDateExpressionFactory.new :'pt-BR'
        nd = factory.create(test_case.first, Date.new(2016, 1, 1))

        expect(nd.data).to eq(test_case.last)
        expect(nd.data.size).to eq(test_case.last.size)
      end
    end
end

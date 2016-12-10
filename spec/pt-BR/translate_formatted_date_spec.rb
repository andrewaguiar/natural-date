require 'spec_helper'

describe NaturalDateExpression do
  [[ '1/4', {:day=>[1], :month=>[4], :year=>[2016]} ],
   [ '01/04', {:day=>[1], :month=>[4], :year=>[2016]} ],
   [ '30/12', {:day=>[30], :month=>[12], :year=>[2016]} ],
   [ '1 do 12', {:day=>[1], :month=>[12], :year=>[2016]} ],
   [ '5 do mês 8', {:day=>[5], :month=>[8], :year=>[2016]} ] ].each do |test_case|

      it "converts formatted date '#{test_case.first} to expression map '#{test_case.last}'" do
        factory = NaturalDateExpressionFactory.new :'pt-BR'
        nd = factory.create(test_case.first, Date.new(2016, 1, 1))

        expect(nd.data).to eq([test_case.last])
      end
    end
end

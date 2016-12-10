require 'spec_helper'

describe NaturalDateExpression do
  context 'should convert natural language' do
    it 'primeiro domingo de jan' do
      expect_expression_map 'primeiro domingo de dezembro', {:week_day=>['first_1.0'], :month=>[12]}
    end

    it 'ultimo domingo de jan' do
      expect_expression_map 'ultimo domingo de dezembro', {:week_day=>['last_999.0'], :month=>[12]}
    end

    it 'penultimo domingo de jan' do
      expect_expression_map 'penultimo domingo de dezembro', {:week_day=>['prior_last_999.0'], :month=>[12]}
    end

    (1..31).to_a.each do |day|
      it "#{day} de janeiro" do
        expect_expression_map "#{day} de janeiro", {:day=>[day], :month=>[1], :year=>[2016]}
      end
    end
  end

  def expect_expression_map expression, expression_map
    factory = NaturalDateExpressionFactory.new :'pt-BR'
    nd = factory.create(expression, Date.new(2016, 1, 1))

    expect(nd.data).to eq([expression_map])
  end
end

require 'spec_helper'

describe NaturalDateExpression do
  context 'should convert natural language' do
    it 'blank string to {}' do
      expect_expression_map_empty nil
      expect_expression_map_empty ''
    end

    it 'invalid string like feijao arroz quiabo to {}' do
      expect_expression_map 'feijão arroz quiabo', {}
    end

    it 'segunda-feira to {:week_day=>[1]}' do
      expect_expression_map 'segunda-feira', {:week_day=>[1]}
    end

    it 'segunda to {:week_day=>[1]}' do
      expect_expression_map 'segunda', {:week_day=>[1]}
    end

    it 'seg to {:week_day=>[1]}' do
      expect_expression_map 'seg', {:week_day=>[1]}
    end

    it 'terca-feira to {:week_day=>[2]}' do
      expect_expression_map 'terca-feira', {:week_day=>[2]}
    end

    it 'terca to {:week_day=>[2]}' do
      expect_expression_map 'terca', {:week_day=>[2]}
    end

    it 'ter to {:week_day=>[2]}' do
      expect_expression_map 'ter', {:week_day=>[2]}
    end

    it 'quarta-feira to {:week_day=>[3]}' do
      expect_expression_map 'quarta-feira', {:week_day=>[3]}
    end

    it 'quarta to {:week_day=>[3]}' do
      expect_expression_map 'quarta', {:week_day=>[3]}
    end

    it 'qua to {:week_day=>[3]}' do
      expect_expression_map 'qua', {:week_day=>[3]}
    end

    it 'quinta-feira to {:week_day=>[4]}' do
      expect_expression_map 'quinta-feira', {:week_day=>[4]}
    end

    it 'quinta to {:week_day=>[4]}' do
      expect_expression_map 'quinta', {:week_day=>[4]}
    end

    it 'qui to {:week_day=>[4]}' do
      expect_expression_map 'qui', {:week_day=>[4]}
    end

    it 'sexta-feira to {:week_day=>[5]}' do
      expect_expression_map 'sexta-feira', {:week_day=>[5]}
    end

    it 'sexta to {:week_day=>[5]}' do
      expect_expression_map 'sexta', {:week_day=>[5]}
    end

    it 'sex to {:week_day=>[5]}' do
      expect_expression_map 'sex', {:week_day=>[5]}
    end

    it 'sabado to {:week_day=>[6]}' do
      expect_expression_map 'sabado', {:week_day=>[6]}
    end

    it 'sab to {:week_day=>[6]}' do
      expect_expression_map 'sab', {:week_day=>[6]}
    end

    it 'domingo to {:week_day=>[0]}' do
      expect_expression_map 'domingo', {:week_day=>[0]}
    end

    it 'dom to {:week_day=>[0]}' do
      expect_expression_map 'dom', {:week_day=>[0]}
    end

    it 'cada segunda-feira to {:week_day=>[1]}' do
      expect_expression_map 'cada segunda-feira', {:week_day=>[1]}
    end

    it 'cada segunda to {:week_day=>[1]}' do
      expect_expression_map 'cada segunda', {:week_day=>[1]}
    end

    it 'cada seg to {:week_day=>[1]}' do
      expect_expression_map 'cada seg', {:week_day=>[1]}
    end

    it 'cada terca-feira to {:week_day=>[2]}' do
      expect_expression_map 'cada terca-feira', {:week_day=>[2]}
    end

    it 'cada terca to {:week_day=>[2]}' do
      expect_expression_map 'cada terca', {:week_day=>[2]}
    end

    it 'cada ter to {:week_day=>[2]}' do
      expect_expression_map 'cada ter', {:week_day=>[2]}
    end

    it 'cada quarta-feira to {:week_day=>[3]}' do
      expect_expression_map 'cada quarta-feira', {:week_day=>[3]}
    end

    it 'cada quarta to {:week_day=>[3]}' do
      expect_expression_map 'cada quarta', {:week_day=>[3]}
    end

    it 'cada qua to {:week_day=>[3]}' do
      expect_expression_map 'cada qua', {:week_day=>[3]}
    end

    it 'cada quinta-feira to {:week_day=>[4]}' do
      expect_expression_map 'cada quinta-feira', {:week_day=>[4]}
    end

    it 'cada quinta to {:week_day=>[4]}' do
      expect_expression_map 'cada quinta', {:week_day=>[4]}
    end

    it 'cada qui to {:week_day=>[4]}' do
      expect_expression_map 'cada qui', {:week_day=>[4]}
    end

    it 'cada sexta-feira to {:week_day=>[5]}' do
      expect_expression_map 'cada sexta-feira', {:week_day=>[5]}
    end

    it 'cada sexta to {:week_day=>[5]}' do
      expect_expression_map 'cada sexta', {:week_day=>[5]}
    end

    it 'cada sex to {:week_day=>[5]}' do
      expect_expression_map 'cada sex', {:week_day=>[5]}
    end

    it 'cada sabado to {:week_day=>[6]}' do
      expect_expression_map 'cada sabado', {:week_day=>[6]}
    end

    it 'cada sab to {:week_day=>[6]}' do
      expect_expression_map 'cada sab', {:week_day=>[6]}
    end

    it 'cada domingo to {:week_day=>[0]}' do
      expect_expression_map 'cada domingo', {:week_day=>[0]}
    end

    it 'cada dom to {:week_day=>[0]}' do
      expect_expression_map 'cada dom', {:week_day=>[0]}
    end

    it 'toda segunda-feira to {:week_day=>[1]}' do
      expect_expression_map 'toda segunda-feira', {:week_day=>[1]}
    end

    it 'toda segunda to {:week_day=>[1]}' do
      expect_expression_map 'toda segunda', {:week_day=>[1]}
    end

    it 'toda seg to {:week_day=>[1]}' do
      expect_expression_map 'toda seg', {:week_day=>[1]}
    end

    it 'toda terca-feira to {:week_day=>[2]}' do
      expect_expression_map 'toda terca-feira', {:week_day=>[2]}
    end

    it 'toda terca to {:week_day=>[2]}' do
      expect_expression_map 'toda terca', {:week_day=>[2]}
    end

    it 'toda ter to {:week_day=>[2]}' do
      expect_expression_map 'toda ter', {:week_day=>[2]}
    end

    it 'toda quarta-feira to {:week_day=>[3]}' do
      expect_expression_map 'toda quarta-feira', {:week_day=>[3]}
    end

    it 'toda quarta to {:week_day=>[3]}' do
      expect_expression_map 'toda quarta', {:week_day=>[3]}
    end

    it 'toda qua to {:week_day=>[3]}' do
      expect_expression_map 'toda qua', {:week_day=>[3]}
    end

    it 'toda quinta-feira to {:week_day=>[4]}' do
      expect_expression_map 'toda quinta-feira', {:week_day=>[4]}
    end

    it 'toda quinta to {:week_day=>[4]}' do
      expect_expression_map 'toda quinta', {:week_day=>[4]}
    end

    it 'toda qui to {:week_day=>[4]}' do
      expect_expression_map 'toda qui', {:week_day=>[4]}
    end

    it 'toda sexta-feira to {:week_day=>[5]}' do
      expect_expression_map 'toda sexta-feira', {:week_day=>[5]}
    end

    it 'toda sexta to {:week_day=>[5]}' do
      expect_expression_map 'toda sexta', {:week_day=>[5]}
    end

    it 'toda sex to {:week_day=>[5]}' do
      expect_expression_map 'toda sex', {:week_day=>[5]}
    end

    it 'toda sabado to {:week_day=>[6]}' do
      expect_expression_map 'toda sabado', {:week_day=>[6]}
    end

    it 'toda sab to {:week_day=>[6]}' do
      expect_expression_map 'toda sab', {:week_day=>[6]}
    end

    it 'toda domingo to {:week_day=>[0]}' do
      expect_expression_map 'toda domingo', {:week_day=>[0]}
    end

    it 'toda dom to {:week_day=>[0]}' do
      expect_expression_map 'toda dom', {:week_day=>[0]}
    end

    def expect_expression_map expression, expression_map
      factory = NaturalDateExpressionFactory.new :'pt-BR'
      nd = factory.create(expression, Date.today)

      expect(nd.data).to eq([expression_map])
    end

    def expect_expression_map_empty expression
      factory = NaturalDateExpressionFactory.new :'pt-BR'
      nd = factory.create(expression, Date.today)

      expect(nd.data).to eq([])
    end
  end
end

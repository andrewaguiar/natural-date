require 'spec_helper'

describe NaturalDateExpression do
  context 'should convert natural language' do
    it 'toda segunda-feira de jan' do
      expect_expression_map 'toda segunda-feira de jan', {:week_day=>[1], :month=>[1]}
    end

    it 'toda segunda-feira de janeiro' do
      expect_expression_map 'toda segunda-feira de janeiro', {:week_day=>[1], :month=>[1]}
    end

    it 'toda segunda-feira de fev' do
      expect_expression_map 'toda segunda-feira de fev', {:week_day=>[1], :month=>[2]}
    end

    it 'toda segunda-feira de fevereiro' do
      expect_expression_map 'toda segunda-feira de fevereiro', {:week_day=>[1], :month=>[2]}
    end

    it 'toda segunda-feira de mar' do
      expect_expression_map 'toda segunda-feira de mar', {:week_day=>[1], :month=>[3]}
    end

    it 'toda segunda-feira de marco' do
      expect_expression_map 'toda segunda-feira de marco', {:week_day=>[1], :month=>[3]}
    end

    it 'toda segunda-feira de abr' do
      expect_expression_map 'toda segunda-feira de abr', {:week_day=>[1], :month=>[4]}
    end

    it 'toda segunda-feira de abril' do
      expect_expression_map 'toda segunda-feira de abril', {:week_day=>[1], :month=>[4]}
    end

    it 'toda segunda-feira de mai' do
      expect_expression_map 'toda segunda-feira de mai', {:week_day=>[1], :month=>[5]}
    end

    it 'toda segunda-feira de maio' do
      expect_expression_map 'toda segunda-feira de maio', {:week_day=>[1], :month=>[5]}
    end

    it 'toda segunda-feira de jun' do
      expect_expression_map 'toda segunda-feira de jun', {:week_day=>[1], :month=>[6]}
    end

    it 'toda segunda-feira de junho' do
      expect_expression_map 'toda segunda-feira de junho', {:week_day=>[1], :month=>[6]}
    end

    it 'toda segunda-feira de jul' do
      expect_expression_map 'toda segunda-feira de jul', {:week_day=>[1], :month=>[7]}
    end

    it 'toda segunda-feira de julho' do
      expect_expression_map 'toda segunda-feira de julho', {:week_day=>[1], :month=>[7]}
    end

    it 'toda segunda-feira de ago' do
      expect_expression_map 'toda segunda-feira de ago', {:week_day=>[1], :month=>[8]}
    end

    it 'toda segunda-feira de agosto' do
      expect_expression_map 'toda segunda-feira de agosto', {:week_day=>[1], :month=>[8]}
    end

    it 'toda segunda-feira de set' do
      expect_expression_map 'toda segunda-feira de set', {:week_day=>[1], :month=>[9]}
    end

    it 'toda segunda-feira de setembro' do
      expect_expression_map 'toda segunda-feira de setembro', {:week_day=>[1], :month=>[9]}
    end

    it 'toda segunda-feira de out' do
      expect_expression_map 'toda segunda-feira de out', {:week_day=>[1], :month=>[10]}
    end

    it 'toda segunda-feira de outubro' do
      expect_expression_map 'toda segunda-feira de outubro', {:week_day=>[1], :month=>[10]}
    end

    it 'toda segunda-feira de nov' do
      expect_expression_map 'toda segunda-feira de nov', {:week_day=>[1], :month=>[11]}
    end

    it 'toda segunda-feira de novembro' do
      expect_expression_map 'toda segunda-feira de novembro', {:week_day=>[1], :month=>[11]}
    end

    it 'toda segunda-feira de dez' do
      expect_expression_map 'toda segunda-feira de dez', {:week_day=>[1], :month=>[12]}
    end

    it 'toda segunda-feira de dezembro' do
      expect_expression_map 'toda segunda-feira de dezembro', {:week_day=>[1], :month=>[12]}
    end

    it 'toda segunda de jan' do
      expect_expression_map 'toda segunda de jan', {:week_day=>[1], :month=>[1]}
    end

    it 'toda segunda de janeiro' do
      expect_expression_map 'toda segunda de janeiro', {:week_day=>[1], :month=>[1]}
    end

    it 'toda segunda de fev' do
      expect_expression_map 'toda segunda de fev', {:week_day=>[1], :month=>[2]}
    end

    it 'toda segunda de fevereiro' do
      expect_expression_map 'toda segunda de fevereiro', {:week_day=>[1], :month=>[2]}
    end

    it 'toda segunda de mar' do
      expect_expression_map 'toda segunda de mar', {:week_day=>[1], :month=>[3]}
    end

    it 'toda segunda de marco' do
      expect_expression_map 'toda segunda de marco', {:week_day=>[1], :month=>[3]}
    end

    it 'toda segunda de abr' do
      expect_expression_map 'toda segunda de abr', {:week_day=>[1], :month=>[4]}
    end

    it 'toda segunda de abril' do
      expect_expression_map 'toda segunda de abril', {:week_day=>[1], :month=>[4]}
    end

    it 'toda segunda de mai' do
      expect_expression_map 'toda segunda de mai', {:week_day=>[1], :month=>[5]}
    end

    it 'toda segunda de maio' do
      expect_expression_map 'toda segunda de maio', {:week_day=>[1], :month=>[5]}
    end

    it 'toda segunda de jun' do
      expect_expression_map 'toda segunda de jun', {:week_day=>[1], :month=>[6]}
    end

    it 'toda segunda de junho' do
      expect_expression_map 'toda segunda de junho', {:week_day=>[1], :month=>[6]}
    end

    it 'toda segunda de jul' do
      expect_expression_map 'toda segunda de jul', {:week_day=>[1], :month=>[7]}
    end

    it 'toda segunda de julho' do
      expect_expression_map 'toda segunda de julho', {:week_day=>[1], :month=>[7]}
    end

    it 'toda segunda de ago' do
      expect_expression_map 'toda segunda de ago', {:week_day=>[1], :month=>[8]}
    end

    it 'toda segunda de agosto' do
      expect_expression_map 'toda segunda de agosto', {:week_day=>[1], :month=>[8]}
    end

    it 'toda segunda de set' do
      expect_expression_map 'toda segunda de set', {:week_day=>[1], :month=>[9]}
    end

    it 'toda segunda de setembro' do
      expect_expression_map 'toda segunda de setembro', {:week_day=>[1], :month=>[9]}
    end

    it 'toda segunda de out' do
      expect_expression_map 'toda segunda de out', {:week_day=>[1], :month=>[10]}
    end

    it 'toda segunda de outubro' do
      expect_expression_map 'toda segunda de outubro', {:week_day=>[1], :month=>[10]}
    end

    it 'toda segunda de nov' do
      expect_expression_map 'toda segunda de nov', {:week_day=>[1], :month=>[11]}
    end

    it 'toda segunda de novembro' do
      expect_expression_map 'toda segunda de novembro', {:week_day=>[1], :month=>[11]}
    end

    it 'toda segunda de dez' do
      expect_expression_map 'toda segunda de dez', {:week_day=>[1], :month=>[12]}
    end

    it 'toda segunda de dezembro' do
      expect_expression_map 'toda segunda de dezembro', {:week_day=>[1], :month=>[12]}
    end

    it 'toda seg de jan' do
      expect_expression_map 'toda seg de jan', {:week_day=>[1], :month=>[1]}
    end

    it 'toda seg de janeiro' do
      expect_expression_map 'toda seg de janeiro', {:week_day=>[1], :month=>[1]}
    end

    it 'toda seg de fev' do
      expect_expression_map 'toda seg de fev', {:week_day=>[1], :month=>[2]}
    end

    it 'toda seg de fevereiro' do
      expect_expression_map 'toda seg de fevereiro', {:week_day=>[1], :month=>[2]}
    end

    it 'toda seg de mar' do
      expect_expression_map 'toda seg de mar', {:week_day=>[1], :month=>[3]}
    end

    it 'toda seg de marco' do
      expect_expression_map 'toda seg de marco', {:week_day=>[1], :month=>[3]}
    end

    it 'toda seg de abr' do
      expect_expression_map 'toda seg de abr', {:week_day=>[1], :month=>[4]}
    end

    it 'toda seg de abril' do
      expect_expression_map 'toda seg de abril', {:week_day=>[1], :month=>[4]}
    end

    it 'toda seg de mai' do
      expect_expression_map 'toda seg de mai', {:week_day=>[1], :month=>[5]}
    end

    it 'toda seg de maio' do
      expect_expression_map 'toda seg de maio', {:week_day=>[1], :month=>[5]}
    end

    it 'toda seg de jun' do
      expect_expression_map 'toda seg de jun', {:week_day=>[1], :month=>[6]}
    end

    it 'toda seg de junho' do
      expect_expression_map 'toda seg de junho', {:week_day=>[1], :month=>[6]}
    end

    it 'toda seg de jul' do
      expect_expression_map 'toda seg de jul', {:week_day=>[1], :month=>[7]}
    end

    it 'toda seg de julho' do
      expect_expression_map 'toda seg de julho', {:week_day=>[1], :month=>[7]}
    end

    it 'toda seg de ago' do
      expect_expression_map 'toda seg de ago', {:week_day=>[1], :month=>[8]}
    end

    it 'toda seg de agosto' do
      expect_expression_map 'toda seg de agosto', {:week_day=>[1], :month=>[8]}
    end

    it 'toda seg de set' do
      expect_expression_map 'toda seg de set', {:week_day=>[1], :month=>[9]}
    end

    it 'toda seg de setembro' do
      expect_expression_map 'toda seg de setembro', {:week_day=>[1], :month=>[9]}
    end

    it 'toda seg de out' do
      expect_expression_map 'toda seg de out', {:week_day=>[1], :month=>[10]}
    end

    it 'toda seg de outubro' do
      expect_expression_map 'toda seg de outubro', {:week_day=>[1], :month=>[10]}
    end

    it 'toda seg de nov' do
      expect_expression_map 'toda seg de nov', {:week_day=>[1], :month=>[11]}
    end

    it 'toda seg de novembro' do
      expect_expression_map 'toda seg de novembro', {:week_day=>[1], :month=>[11]}
    end

    it 'toda seg de dez' do
      expect_expression_map 'toda seg de dez', {:week_day=>[1], :month=>[12]}
    end

    it 'toda seg de dezembro' do
      expect_expression_map 'toda seg de dezembro', {:week_day=>[1], :month=>[12]}
    end

    it 'toda terca-feira de jan' do
      expect_expression_map 'toda terca-feira de jan', {:week_day=>[2], :month=>[1]}
    end

    it 'toda terca-feira de janeiro' do
      expect_expression_map 'toda terca-feira de janeiro', {:week_day=>[2], :month=>[1]}
    end

    it 'toda terca-feira de fev' do
      expect_expression_map 'toda terca-feira de fev', {:week_day=>[2], :month=>[2]}
    end

    it 'toda terca-feira de fevereiro' do
      expect_expression_map 'toda terca-feira de fevereiro', {:week_day=>[2], :month=>[2]}
    end

    it 'toda terca-feira de mar' do
      expect_expression_map 'toda terca-feira de mar', {:week_day=>[2], :month=>[3]}
    end

    it 'toda terca-feira de marco' do
      expect_expression_map 'toda terca-feira de marco', {:week_day=>[2], :month=>[3]}
    end

    it 'toda terca-feira de abr' do
      expect_expression_map 'toda terca-feira de abr', {:week_day=>[2], :month=>[4]}
    end

    it 'toda terca-feira de abril' do
      expect_expression_map 'toda terca-feira de abril', {:week_day=>[2], :month=>[4]}
    end

    it 'toda terca-feira de mai' do
      expect_expression_map 'toda terca-feira de mai', {:week_day=>[2], :month=>[5]}
    end

    it 'toda terca-feira de maio' do
      expect_expression_map 'toda terca-feira de maio', {:week_day=>[2], :month=>[5]}
    end

    it 'toda terca-feira de jun' do
      expect_expression_map 'toda terca-feira de jun', {:week_day=>[2], :month=>[6]}
    end

    it 'toda terca-feira de junho' do
      expect_expression_map 'toda terca-feira de junho', {:week_day=>[2], :month=>[6]}
    end

    it 'toda terca-feira de jul' do
      expect_expression_map 'toda terca-feira de jul', {:week_day=>[2], :month=>[7]}
    end

    it 'toda terca-feira de julho' do
      expect_expression_map 'toda terca-feira de julho', {:week_day=>[2], :month=>[7]}
    end

    it 'toda terca-feira de ago' do
      expect_expression_map 'toda terca-feira de ago', {:week_day=>[2], :month=>[8]}
    end

    it 'toda terca-feira de agosto' do
      expect_expression_map 'toda terca-feira de agosto', {:week_day=>[2], :month=>[8]}
    end

    it 'toda terca-feira de set' do
      expect_expression_map 'toda terca-feira de set', {:week_day=>[2], :month=>[9]}
    end

    it 'toda terca-feira de setembro' do
      expect_expression_map 'toda terca-feira de setembro', {:week_day=>[2], :month=>[9]}
    end

    it 'toda terca-feira de out' do
      expect_expression_map 'toda terca-feira de out', {:week_day=>[2], :month=>[10]}
    end

    it 'toda terca-feira de outubro' do
      expect_expression_map 'toda terca-feira de outubro', {:week_day=>[2], :month=>[10]}
    end

    it 'toda terca-feira de nov' do
      expect_expression_map 'toda terca-feira de nov', {:week_day=>[2], :month=>[11]}
    end

    it 'toda terca-feira de novembro' do
      expect_expression_map 'toda terca-feira de novembro', {:week_day=>[2], :month=>[11]}
    end

    it 'toda terca-feira de dez' do
      expect_expression_map 'toda terca-feira de dez', {:week_day=>[2], :month=>[12]}
    end

    it 'toda terca-feira de dezembro' do
      expect_expression_map 'toda terca-feira de dezembro', {:week_day=>[2], :month=>[12]}
    end

    it 'toda terca de jan' do
      expect_expression_map 'toda terca de jan', {:week_day=>[2], :month=>[1]}
    end

    it 'toda terca de janeiro' do
      expect_expression_map 'toda terca de janeiro', {:week_day=>[2], :month=>[1]}
    end

    it 'toda terca de fev' do
      expect_expression_map 'toda terca de fev', {:week_day=>[2], :month=>[2]}
    end

    it 'toda terca de fevereiro' do
      expect_expression_map 'toda terca de fevereiro', {:week_day=>[2], :month=>[2]}
    end

    it 'toda terca de mar' do
      expect_expression_map 'toda terca de mar', {:week_day=>[2], :month=>[3]}
    end

    it 'toda terca de marco' do
      expect_expression_map 'toda terca de marco', {:week_day=>[2], :month=>[3]}
    end

    it 'toda terca de abr' do
      expect_expression_map 'toda terca de abr', {:week_day=>[2], :month=>[4]}
    end

    it 'toda terca de abril' do
      expect_expression_map 'toda terca de abril', {:week_day=>[2], :month=>[4]}
    end

    it 'toda terca de mai' do
      expect_expression_map 'toda terca de mai', {:week_day=>[2], :month=>[5]}
    end

    it 'toda terca de maio' do
      expect_expression_map 'toda terca de maio', {:week_day=>[2], :month=>[5]}
    end

    it 'toda terca de jun' do
      expect_expression_map 'toda terca de jun', {:week_day=>[2], :month=>[6]}
    end

    it 'toda terca de junho' do
      expect_expression_map 'toda terca de junho', {:week_day=>[2], :month=>[6]}
    end

    it 'toda terca de jul' do
      expect_expression_map 'toda terca de jul', {:week_day=>[2], :month=>[7]}
    end

    it 'toda terca de julho' do
      expect_expression_map 'toda terca de julho', {:week_day=>[2], :month=>[7]}
    end

    it 'toda terca de ago' do
      expect_expression_map 'toda terca de ago', {:week_day=>[2], :month=>[8]}
    end

    it 'toda terca de agosto' do
      expect_expression_map 'toda terca de agosto', {:week_day=>[2], :month=>[8]}
    end

    it 'toda terca de set' do
      expect_expression_map 'toda terca de set', {:week_day=>[2], :month=>[9]}
    end

    it 'toda terca de setembro' do
      expect_expression_map 'toda terca de setembro', {:week_day=>[2], :month=>[9]}
    end

    it 'toda terca de out' do
      expect_expression_map 'toda terca de out', {:week_day=>[2], :month=>[10]}
    end

    it 'toda terca de outubro' do
      expect_expression_map 'toda terca de outubro', {:week_day=>[2], :month=>[10]}
    end

    it 'toda terca de nov' do
      expect_expression_map 'toda terca de nov', {:week_day=>[2], :month=>[11]}
    end

    it 'toda terca de novembro' do
      expect_expression_map 'toda terca de novembro', {:week_day=>[2], :month=>[11]}
    end

    it 'toda terca de dez' do
      expect_expression_map 'toda terca de dez', {:week_day=>[2], :month=>[12]}
    end

    it 'toda terca de dezembro' do
      expect_expression_map 'toda terca de dezembro', {:week_day=>[2], :month=>[12]}
    end

    it 'toda ter de jan' do
      expect_expression_map 'toda ter de jan', {:week_day=>[2], :month=>[1]}
    end

    it 'toda ter de janeiro' do
      expect_expression_map 'toda ter de janeiro', {:week_day=>[2], :month=>[1]}
    end

    it 'toda ter de fev' do
      expect_expression_map 'toda ter de fev', {:week_day=>[2], :month=>[2]}
    end

    it 'toda ter de fevereiro' do
      expect_expression_map 'toda ter de fevereiro', {:week_day=>[2], :month=>[2]}
    end

    it 'toda ter de mar' do
      expect_expression_map 'toda ter de mar', {:week_day=>[2], :month=>[3]}
    end

    it 'toda ter de marco' do
      expect_expression_map 'toda ter de marco', {:week_day=>[2], :month=>[3]}
    end

    it 'toda ter de abr' do
      expect_expression_map 'toda ter de abr', {:week_day=>[2], :month=>[4]}
    end

    it 'toda ter de abril' do
      expect_expression_map 'toda ter de abril', {:week_day=>[2], :month=>[4]}
    end

    it 'toda ter de mai' do
      expect_expression_map 'toda ter de mai', {:week_day=>[2], :month=>[5]}
    end

    it 'toda ter de maio' do
      expect_expression_map 'toda ter de maio', {:week_day=>[2], :month=>[5]}
    end

    it 'toda ter de jun' do
      expect_expression_map 'toda ter de jun', {:week_day=>[2], :month=>[6]}
    end

    it 'toda ter de junho' do
      expect_expression_map 'toda ter de junho', {:week_day=>[2], :month=>[6]}
    end

    it 'toda ter de jul' do
      expect_expression_map 'toda ter de jul', {:week_day=>[2], :month=>[7]}
    end

    it 'toda ter de julho' do
      expect_expression_map 'toda ter de julho', {:week_day=>[2], :month=>[7]}
    end

    it 'toda ter de ago' do
      expect_expression_map 'toda ter de ago', {:week_day=>[2], :month=>[8]}
    end

    it 'toda ter de agosto' do
      expect_expression_map 'toda ter de agosto', {:week_day=>[2], :month=>[8]}
    end

    it 'toda ter de set' do
      expect_expression_map 'toda ter de set', {:week_day=>[2], :month=>[9]}
    end

    it 'toda ter de setembro' do
      expect_expression_map 'toda ter de setembro', {:week_day=>[2], :month=>[9]}
    end

    it 'toda ter de out' do
      expect_expression_map 'toda ter de out', {:week_day=>[2], :month=>[10]}
    end

    it 'toda ter de outubro' do
      expect_expression_map 'toda ter de outubro', {:week_day=>[2], :month=>[10]}
    end

    it 'toda ter de nov' do
      expect_expression_map 'toda ter de nov', {:week_day=>[2], :month=>[11]}
    end

    it 'toda ter de novembro' do
      expect_expression_map 'toda ter de novembro', {:week_day=>[2], :month=>[11]}
    end

    it 'toda ter de dez' do
      expect_expression_map 'toda ter de dez', {:week_day=>[2], :month=>[12]}
    end

    it 'toda ter de dezembro' do
      expect_expression_map 'toda ter de dezembro', {:week_day=>[2], :month=>[12]}
    end

    it 'toda quarta-feira de jan' do
      expect_expression_map 'toda quarta-feira de jan', {:week_day=>[3], :month=>[1]}
    end

    it 'toda quarta-feira de janeiro' do
      expect_expression_map 'toda quarta-feira de janeiro', {:week_day=>[3], :month=>[1]}
    end

    it 'toda quarta-feira de fev' do
      expect_expression_map 'toda quarta-feira de fev', {:week_day=>[3], :month=>[2]}
    end

    it 'toda quarta-feira de fevereiro' do
      expect_expression_map 'toda quarta-feira de fevereiro', {:week_day=>[3], :month=>[2]}
    end

    it 'toda quarta-feira de mar' do
      expect_expression_map 'toda quarta-feira de mar', {:week_day=>[3], :month=>[3]}
    end

    it 'toda quarta-feira de marco' do
      expect_expression_map 'toda quarta-feira de marco', {:week_day=>[3], :month=>[3]}
    end

    it 'toda quarta-feira de abr' do
      expect_expression_map 'toda quarta-feira de abr', {:week_day=>[3], :month=>[4]}
    end

    it 'toda quarta-feira de abril' do
      expect_expression_map 'toda quarta-feira de abril', {:week_day=>[3], :month=>[4]}
    end

    it 'toda quarta-feira de mai' do
      expect_expression_map 'toda quarta-feira de mai', {:week_day=>[3], :month=>[5]}
    end

    it 'toda quarta-feira de maio' do
      expect_expression_map 'toda quarta-feira de maio', {:week_day=>[3], :month=>[5]}
    end

    it 'toda quarta-feira de jun' do
      expect_expression_map 'toda quarta-feira de jun', {:week_day=>[3], :month=>[6]}
    end

    it 'toda quarta-feira de junho' do
      expect_expression_map 'toda quarta-feira de junho', {:week_day=>[3], :month=>[6]}
    end

    it 'toda quarta-feira de jul' do
      expect_expression_map 'toda quarta-feira de jul', {:week_day=>[3], :month=>[7]}
    end

    it 'toda quarta-feira de julho' do
      expect_expression_map 'toda quarta-feira de julho', {:week_day=>[3], :month=>[7]}
    end

    it 'toda quarta-feira de ago' do
      expect_expression_map 'toda quarta-feira de ago', {:week_day=>[3], :month=>[8]}
    end

    it 'toda quarta-feira de agosto' do
      expect_expression_map 'toda quarta-feira de agosto', {:week_day=>[3], :month=>[8]}
    end

    it 'toda quarta-feira de set' do
      expect_expression_map 'toda quarta-feira de set', {:week_day=>[3], :month=>[9]}
    end

    it 'toda quarta-feira de setembro' do
      expect_expression_map 'toda quarta-feira de setembro', {:week_day=>[3], :month=>[9]}
    end

    it 'toda quarta-feira de out' do
      expect_expression_map 'toda quarta-feira de out', {:week_day=>[3], :month=>[10]}
    end

    it 'toda quarta-feira de outubro' do
      expect_expression_map 'toda quarta-feira de outubro', {:week_day=>[3], :month=>[10]}
    end

    it 'toda quarta-feira de nov' do
      expect_expression_map 'toda quarta-feira de nov', {:week_day=>[3], :month=>[11]}
    end

    it 'toda quarta-feira de novembro' do
      expect_expression_map 'toda quarta-feira de novembro', {:week_day=>[3], :month=>[11]}
    end

    it 'toda quarta-feira de dez' do
      expect_expression_map 'toda quarta-feira de dez', {:week_day=>[3], :month=>[12]}
    end

    it 'toda quarta-feira de dezembro' do
      expect_expression_map 'toda quarta-feira de dezembro', {:week_day=>[3], :month=>[12]}
    end

    it 'toda quarta de jan' do
      expect_expression_map 'toda quarta de jan', {:week_day=>[3], :month=>[1]}
    end

    it 'toda quarta de janeiro' do
      expect_expression_map 'toda quarta de janeiro', {:week_day=>[3], :month=>[1]}
    end

    it 'toda quarta de fev' do
      expect_expression_map 'toda quarta de fev', {:week_day=>[3], :month=>[2]}
    end

    it 'toda quarta de fevereiro' do
      expect_expression_map 'toda quarta de fevereiro', {:week_day=>[3], :month=>[2]}
    end

    it 'toda quarta de mar' do
      expect_expression_map 'toda quarta de mar', {:week_day=>[3], :month=>[3]}
    end

    it 'toda quarta de marco' do
      expect_expression_map 'toda quarta de marco', {:week_day=>[3], :month=>[3]}
    end

    it 'toda quarta de abr' do
      expect_expression_map 'toda quarta de abr', {:week_day=>[3], :month=>[4]}
    end

    it 'toda quarta de abril' do
      expect_expression_map 'toda quarta de abril', {:week_day=>[3], :month=>[4]}
    end

    it 'toda quarta de mai' do
      expect_expression_map 'toda quarta de mai', {:week_day=>[3], :month=>[5]}
    end

    it 'toda quarta de maio' do
      expect_expression_map 'toda quarta de maio', {:week_day=>[3], :month=>[5]}
    end

    it 'toda quarta de jun' do
      expect_expression_map 'toda quarta de jun', {:week_day=>[3], :month=>[6]}
    end

    it 'toda quarta de junho' do
      expect_expression_map 'toda quarta de junho', {:week_day=>[3], :month=>[6]}
    end

    it 'toda quarta de jul' do
      expect_expression_map 'toda quarta de jul', {:week_day=>[3], :month=>[7]}
    end

    it 'toda quarta de julho' do
      expect_expression_map 'toda quarta de julho', {:week_day=>[3], :month=>[7]}
    end

    it 'toda quarta de ago' do
      expect_expression_map 'toda quarta de ago', {:week_day=>[3], :month=>[8]}
    end

    it 'toda quarta de agosto' do
      expect_expression_map 'toda quarta de agosto', {:week_day=>[3], :month=>[8]}
    end

    it 'toda quarta de set' do
      expect_expression_map 'toda quarta de set', {:week_day=>[3], :month=>[9]}
    end

    it 'toda quarta de setembro' do
      expect_expression_map 'toda quarta de setembro', {:week_day=>[3], :month=>[9]}
    end

    it 'toda quarta de out' do
      expect_expression_map 'toda quarta de out', {:week_day=>[3], :month=>[10]}
    end

    it 'toda quarta de outubro' do
      expect_expression_map 'toda quarta de outubro', {:week_day=>[3], :month=>[10]}
    end

    it 'toda quarta de nov' do
      expect_expression_map 'toda quarta de nov', {:week_day=>[3], :month=>[11]}
    end

    it 'toda quarta de novembro' do
      expect_expression_map 'toda quarta de novembro', {:week_day=>[3], :month=>[11]}
    end

    it 'toda quarta de dez' do
      expect_expression_map 'toda quarta de dez', {:week_day=>[3], :month=>[12]}
    end

    it 'toda quarta de dezembro' do
      expect_expression_map 'toda quarta de dezembro', {:week_day=>[3], :month=>[12]}
    end

    it 'toda qua de jan' do
      expect_expression_map 'toda qua de jan', {:week_day=>[3], :month=>[1]}
    end

    it 'toda qua de janeiro' do
      expect_expression_map 'toda qua de janeiro', {:week_day=>[3], :month=>[1]}
    end

    it 'toda qua de fev' do
      expect_expression_map 'toda qua de fev', {:week_day=>[3], :month=>[2]}
    end

    it 'toda qua de fevereiro' do
      expect_expression_map 'toda qua de fevereiro', {:week_day=>[3], :month=>[2]}
    end

    it 'toda qua de mar' do
      expect_expression_map 'toda qua de mar', {:week_day=>[3], :month=>[3]}
    end

    it 'toda qua de marco' do
      expect_expression_map 'toda qua de marco', {:week_day=>[3], :month=>[3]}
    end

    it 'toda qua de abr' do
      expect_expression_map 'toda qua de abr', {:week_day=>[3], :month=>[4]}
    end

    it 'toda qua de abril' do
      expect_expression_map 'toda qua de abril', {:week_day=>[3], :month=>[4]}
    end

    it 'toda qua de mai' do
      expect_expression_map 'toda qua de mai', {:week_day=>[3], :month=>[5]}
    end

    it 'toda qua de maio' do
      expect_expression_map 'toda qua de maio', {:week_day=>[3], :month=>[5]}
    end

    it 'toda qua de jun' do
      expect_expression_map 'toda qua de jun', {:week_day=>[3], :month=>[6]}
    end

    it 'toda qua de junho' do
      expect_expression_map 'toda qua de junho', {:week_day=>[3], :month=>[6]}
    end

    it 'toda qua de jul' do
      expect_expression_map 'toda qua de jul', {:week_day=>[3], :month=>[7]}
    end

    it 'toda qua de julho' do
      expect_expression_map 'toda qua de julho', {:week_day=>[3], :month=>[7]}
    end

    it 'toda qua de ago' do
      expect_expression_map 'toda qua de ago', {:week_day=>[3], :month=>[8]}
    end

    it 'toda qua de agosto' do
      expect_expression_map 'toda qua de agosto', {:week_day=>[3], :month=>[8]}
    end

    it 'toda qua de set' do
      expect_expression_map 'toda qua de set', {:week_day=>[3], :month=>[9]}
    end

    it 'toda qua de setembro' do
      expect_expression_map 'toda qua de setembro', {:week_day=>[3], :month=>[9]}
    end

    it 'toda qua de out' do
      expect_expression_map 'toda qua de out', {:week_day=>[3], :month=>[10]}
    end

    it 'toda qua de outubro' do
      expect_expression_map 'toda qua de outubro', {:week_day=>[3], :month=>[10]}
    end

    it 'toda qua de nov' do
      expect_expression_map 'toda qua de nov', {:week_day=>[3], :month=>[11]}
    end

    it 'toda qua de novembro' do
      expect_expression_map 'toda qua de novembro', {:week_day=>[3], :month=>[11]}
    end

    it 'toda qua de dez' do
      expect_expression_map 'toda qua de dez', {:week_day=>[3], :month=>[12]}
    end

    it 'toda qua de dezembro' do
      expect_expression_map 'toda qua de dezembro', {:week_day=>[3], :month=>[12]}
    end

    it 'toda quinta-feira de jan' do
      expect_expression_map 'toda quinta-feira de jan', {:week_day=>[4], :month=>[1]}
    end

    it 'toda quinta-feira de janeiro' do
      expect_expression_map 'toda quinta-feira de janeiro', {:week_day=>[4], :month=>[1]}
    end

    it 'toda quinta-feira de fev' do
      expect_expression_map 'toda quinta-feira de fev', {:week_day=>[4], :month=>[2]}
    end

    it 'toda quinta-feira de fevereiro' do
      expect_expression_map 'toda quinta-feira de fevereiro', {:week_day=>[4], :month=>[2]}
    end

    it 'toda quinta-feira de mar' do
      expect_expression_map 'toda quinta-feira de mar', {:week_day=>[4], :month=>[3]}
    end

    it 'toda quinta-feira de marco' do
      expect_expression_map 'toda quinta-feira de marco', {:week_day=>[4], :month=>[3]}
    end

    it 'toda quinta-feira de abr' do
      expect_expression_map 'toda quinta-feira de abr', {:week_day=>[4], :month=>[4]}
    end

    it 'toda quinta-feira de abril' do
      expect_expression_map 'toda quinta-feira de abril', {:week_day=>[4], :month=>[4]}
    end

    it 'toda quinta-feira de mai' do
      expect_expression_map 'toda quinta-feira de mai', {:week_day=>[4], :month=>[5]}
    end

    it 'toda quinta-feira de maio' do
      expect_expression_map 'toda quinta-feira de maio', {:week_day=>[4], :month=>[5]}
    end

    it 'toda quinta-feira de jun' do
      expect_expression_map 'toda quinta-feira de jun', {:week_day=>[4], :month=>[6]}
    end

    it 'toda quinta-feira de junho' do
      expect_expression_map 'toda quinta-feira de junho', {:week_day=>[4], :month=>[6]}
    end

    it 'toda quinta-feira de jul' do
      expect_expression_map 'toda quinta-feira de jul', {:week_day=>[4], :month=>[7]}
    end

    it 'toda quinta-feira de julho' do
      expect_expression_map 'toda quinta-feira de julho', {:week_day=>[4], :month=>[7]}
    end

    it 'toda quinta-feira de ago' do
      expect_expression_map 'toda quinta-feira de ago', {:week_day=>[4], :month=>[8]}
    end

    it 'toda quinta-feira de agosto' do
      expect_expression_map 'toda quinta-feira de agosto', {:week_day=>[4], :month=>[8]}
    end

    it 'toda quinta-feira de set' do
      expect_expression_map 'toda quinta-feira de set', {:week_day=>[4], :month=>[9]}
    end

    it 'toda quinta-feira de setembro' do
      expect_expression_map 'toda quinta-feira de setembro', {:week_day=>[4], :month=>[9]}
    end

    it 'toda quinta-feira de out' do
      expect_expression_map 'toda quinta-feira de out', {:week_day=>[4], :month=>[10]}
    end

    it 'toda quinta-feira de outubro' do
      expect_expression_map 'toda quinta-feira de outubro', {:week_day=>[4], :month=>[10]}
    end

    it 'toda quinta-feira de nov' do
      expect_expression_map 'toda quinta-feira de nov', {:week_day=>[4], :month=>[11]}
    end

    it 'toda quinta-feira de novembro' do
      expect_expression_map 'toda quinta-feira de novembro', {:week_day=>[4], :month=>[11]}
    end

    it 'toda quinta-feira de dez' do
      expect_expression_map 'toda quinta-feira de dez', {:week_day=>[4], :month=>[12]}
    end

    it 'toda quinta-feira de dezembro' do
      expect_expression_map 'toda quinta-feira de dezembro', {:week_day=>[4], :month=>[12]}
    end

    it 'toda quinta de jan' do
      expect_expression_map 'toda quinta de jan', {:week_day=>[4], :month=>[1]}
    end

    it 'toda quinta de janeiro' do
      expect_expression_map 'toda quinta de janeiro', {:week_day=>[4], :month=>[1]}
    end

    it 'toda quinta de fev' do
      expect_expression_map 'toda quinta de fev', {:week_day=>[4], :month=>[2]}
    end

    it 'toda quinta de fevereiro' do
      expect_expression_map 'toda quinta de fevereiro', {:week_day=>[4], :month=>[2]}
    end

    it 'toda quinta de mar' do
      expect_expression_map 'toda quinta de mar', {:week_day=>[4], :month=>[3]}
    end

    it 'toda quinta de marco' do
      expect_expression_map 'toda quinta de marco', {:week_day=>[4], :month=>[3]}
    end

    it 'toda quinta de abr' do
      expect_expression_map 'toda quinta de abr', {:week_day=>[4], :month=>[4]}
    end

    it 'toda quinta de abril' do
      expect_expression_map 'toda quinta de abril', {:week_day=>[4], :month=>[4]}
    end

    it 'toda quinta de mai' do
      expect_expression_map 'toda quinta de mai', {:week_day=>[4], :month=>[5]}
    end

    it 'toda quinta de maio' do
      expect_expression_map 'toda quinta de maio', {:week_day=>[4], :month=>[5]}
    end

    it 'toda quinta de jun' do
      expect_expression_map 'toda quinta de jun', {:week_day=>[4], :month=>[6]}
    end

    it 'toda quinta de junho' do
      expect_expression_map 'toda quinta de junho', {:week_day=>[4], :month=>[6]}
    end

    it 'toda quinta de jul' do
      expect_expression_map 'toda quinta de jul', {:week_day=>[4], :month=>[7]}
    end

    it 'toda quinta de julho' do
      expect_expression_map 'toda quinta de julho', {:week_day=>[4], :month=>[7]}
    end

    it 'toda quinta de ago' do
      expect_expression_map 'toda quinta de ago', {:week_day=>[4], :month=>[8]}
    end

    it 'toda quinta de agosto' do
      expect_expression_map 'toda quinta de agosto', {:week_day=>[4], :month=>[8]}
    end

    it 'toda quinta de set' do
      expect_expression_map 'toda quinta de set', {:week_day=>[4], :month=>[9]}
    end

    it 'toda quinta de setembro' do
      expect_expression_map 'toda quinta de setembro', {:week_day=>[4], :month=>[9]}
    end

    it 'toda quinta de out' do
      expect_expression_map 'toda quinta de out', {:week_day=>[4], :month=>[10]}
    end

    it 'toda quinta de outubro' do
      expect_expression_map 'toda quinta de outubro', {:week_day=>[4], :month=>[10]}
    end

    it 'toda quinta de nov' do
      expect_expression_map 'toda quinta de nov', {:week_day=>[4], :month=>[11]}
    end

    it 'toda quinta de novembro' do
      expect_expression_map 'toda quinta de novembro', {:week_day=>[4], :month=>[11]}
    end

    it 'toda quinta de dez' do
      expect_expression_map 'toda quinta de dez', {:week_day=>[4], :month=>[12]}
    end

    it 'toda quinta de dezembro' do
      expect_expression_map 'toda quinta de dezembro', {:week_day=>[4], :month=>[12]}
    end

    it 'toda qui de jan' do
      expect_expression_map 'toda qui de jan', {:week_day=>[4], :month=>[1]}
    end

    it 'toda qui de janeiro' do
      expect_expression_map 'toda qui de janeiro', {:week_day=>[4], :month=>[1]}
    end

    it 'toda qui de fev' do
      expect_expression_map 'toda qui de fev', {:week_day=>[4], :month=>[2]}
    end

    it 'toda qui de fevereiro' do
      expect_expression_map 'toda qui de fevereiro', {:week_day=>[4], :month=>[2]}
    end

    it 'toda qui de mar' do
      expect_expression_map 'toda qui de mar', {:week_day=>[4], :month=>[3]}
    end

    it 'toda qui de marco' do
      expect_expression_map 'toda qui de marco', {:week_day=>[4], :month=>[3]}
    end

    it 'toda qui de abr' do
      expect_expression_map 'toda qui de abr', {:week_day=>[4], :month=>[4]}
    end

    it 'toda qui de abril' do
      expect_expression_map 'toda qui de abril', {:week_day=>[4], :month=>[4]}
    end

    it 'toda qui de mai' do
      expect_expression_map 'toda qui de mai', {:week_day=>[4], :month=>[5]}
    end

    it 'toda qui de maio' do
      expect_expression_map 'toda qui de maio', {:week_day=>[4], :month=>[5]}
    end

    it 'toda qui de jun' do
      expect_expression_map 'toda qui de jun', {:week_day=>[4], :month=>[6]}
    end

    it 'toda qui de junho' do
      expect_expression_map 'toda qui de junho', {:week_day=>[4], :month=>[6]}
    end

    it 'toda qui de jul' do
      expect_expression_map 'toda qui de jul', {:week_day=>[4], :month=>[7]}
    end

    it 'toda qui de julho' do
      expect_expression_map 'toda qui de julho', {:week_day=>[4], :month=>[7]}
    end

    it 'toda qui de ago' do
      expect_expression_map 'toda qui de ago', {:week_day=>[4], :month=>[8]}
    end

    it 'toda qui de agosto' do
      expect_expression_map 'toda qui de agosto', {:week_day=>[4], :month=>[8]}
    end

    it 'toda qui de set' do
      expect_expression_map 'toda qui de set', {:week_day=>[4], :month=>[9]}
    end

    it 'toda qui de setembro' do
      expect_expression_map 'toda qui de setembro', {:week_day=>[4], :month=>[9]}
    end

    it 'toda qui de out' do
      expect_expression_map 'toda qui de out', {:week_day=>[4], :month=>[10]}
    end

    it 'toda qui de outubro' do
      expect_expression_map 'toda qui de outubro', {:week_day=>[4], :month=>[10]}
    end

    it 'toda qui de nov' do
      expect_expression_map 'toda qui de nov', {:week_day=>[4], :month=>[11]}
    end

    it 'toda qui de novembro' do
      expect_expression_map 'toda qui de novembro', {:week_day=>[4], :month=>[11]}
    end

    it 'toda qui de dez' do
      expect_expression_map 'toda qui de dez', {:week_day=>[4], :month=>[12]}
    end

    it 'toda qui de dezembro' do
      expect_expression_map 'toda qui de dezembro', {:week_day=>[4], :month=>[12]}
    end

    it 'toda sexta-feira de jan' do
      expect_expression_map 'toda sexta-feira de jan', {:week_day=>[5], :month=>[1]}
    end

    it 'toda sexta-feira de janeiro' do
      expect_expression_map 'toda sexta-feira de janeiro', {:week_day=>[5], :month=>[1]}
    end

    it 'toda sexta-feira de fev' do
      expect_expression_map 'toda sexta-feira de fev', {:week_day=>[5], :month=>[2]}
    end

    it 'toda sexta-feira de fevereiro' do
      expect_expression_map 'toda sexta-feira de fevereiro', {:week_day=>[5], :month=>[2]}
    end

    it 'toda sexta-feira de mar' do
      expect_expression_map 'toda sexta-feira de mar', {:week_day=>[5], :month=>[3]}
    end

    it 'toda sexta-feira de marco' do
      expect_expression_map 'toda sexta-feira de marco', {:week_day=>[5], :month=>[3]}
    end

    it 'toda sexta-feira de abr' do
      expect_expression_map 'toda sexta-feira de abr', {:week_day=>[5], :month=>[4]}
    end

    it 'toda sexta-feira de abril' do
      expect_expression_map 'toda sexta-feira de abril', {:week_day=>[5], :month=>[4]}
    end

    it 'toda sexta-feira de mai' do
      expect_expression_map 'toda sexta-feira de mai', {:week_day=>[5], :month=>[5]}
    end

    it 'toda sexta-feira de maio' do
      expect_expression_map 'toda sexta-feira de maio', {:week_day=>[5], :month=>[5]}
    end

    it 'toda sexta-feira de jun' do
      expect_expression_map 'toda sexta-feira de jun', {:week_day=>[5], :month=>[6]}
    end

    it 'toda sexta-feira de junho' do
      expect_expression_map 'toda sexta-feira de junho', {:week_day=>[5], :month=>[6]}
    end

    it 'toda sexta-feira de jul' do
      expect_expression_map 'toda sexta-feira de jul', {:week_day=>[5], :month=>[7]}
    end

    it 'toda sexta-feira de julho' do
      expect_expression_map 'toda sexta-feira de julho', {:week_day=>[5], :month=>[7]}
    end

    it 'toda sexta-feira de ago' do
      expect_expression_map 'toda sexta-feira de ago', {:week_day=>[5], :month=>[8]}
    end

    it 'toda sexta-feira de agosto' do
      expect_expression_map 'toda sexta-feira de agosto', {:week_day=>[5], :month=>[8]}
    end

    it 'toda sexta-feira de set' do
      expect_expression_map 'toda sexta-feira de set', {:week_day=>[5], :month=>[9]}
    end

    it 'toda sexta-feira de setembro' do
      expect_expression_map 'toda sexta-feira de setembro', {:week_day=>[5], :month=>[9]}
    end

    it 'toda sexta-feira de out' do
      expect_expression_map 'toda sexta-feira de out', {:week_day=>[5], :month=>[10]}
    end

    it 'toda sexta-feira de outubro' do
      expect_expression_map 'toda sexta-feira de outubro', {:week_day=>[5], :month=>[10]}
    end

    it 'toda sexta-feira de nov' do
      expect_expression_map 'toda sexta-feira de nov', {:week_day=>[5], :month=>[11]}
    end

    it 'toda sexta-feira de novembro' do
      expect_expression_map 'toda sexta-feira de novembro', {:week_day=>[5], :month=>[11]}
    end

    it 'toda sexta-feira de dez' do
      expect_expression_map 'toda sexta-feira de dez', {:week_day=>[5], :month=>[12]}
    end

    it 'toda sexta-feira de dezembro' do
      expect_expression_map 'toda sexta-feira de dezembro', {:week_day=>[5], :month=>[12]}
    end

    it 'toda sexta de jan' do
      expect_expression_map 'toda sexta de jan', {:week_day=>[5], :month=>[1]}
    end

    it 'toda sexta de janeiro' do
      expect_expression_map 'toda sexta de janeiro', {:week_day=>[5], :month=>[1]}
    end

    it 'toda sexta de fev' do
      expect_expression_map 'toda sexta de fev', {:week_day=>[5], :month=>[2]}
    end

    it 'toda sexta de fevereiro' do
      expect_expression_map 'toda sexta de fevereiro', {:week_day=>[5], :month=>[2]}
    end

    it 'toda sexta de mar' do
      expect_expression_map 'toda sexta de mar', {:week_day=>[5], :month=>[3]}
    end

    it 'toda sexta de marco' do
      expect_expression_map 'toda sexta de marco', {:week_day=>[5], :month=>[3]}
    end

    it 'toda sexta de abr' do
      expect_expression_map 'toda sexta de abr', {:week_day=>[5], :month=>[4]}
    end

    it 'toda sexta de abril' do
      expect_expression_map 'toda sexta de abril', {:week_day=>[5], :month=>[4]}
    end

    it 'toda sexta de mai' do
      expect_expression_map 'toda sexta de mai', {:week_day=>[5], :month=>[5]}
    end

    it 'toda sexta de maio' do
      expect_expression_map 'toda sexta de maio', {:week_day=>[5], :month=>[5]}
    end

    it 'toda sexta de jun' do
      expect_expression_map 'toda sexta de jun', {:week_day=>[5], :month=>[6]}
    end

    it 'toda sexta de junho' do
      expect_expression_map 'toda sexta de junho', {:week_day=>[5], :month=>[6]}
    end

    it 'toda sexta de jul' do
      expect_expression_map 'toda sexta de jul', {:week_day=>[5], :month=>[7]}
    end

    it 'toda sexta de julho' do
      expect_expression_map 'toda sexta de julho', {:week_day=>[5], :month=>[7]}
    end

    it 'toda sexta de ago' do
      expect_expression_map 'toda sexta de ago', {:week_day=>[5], :month=>[8]}
    end

    it 'toda sexta de agosto' do
      expect_expression_map 'toda sexta de agosto', {:week_day=>[5], :month=>[8]}
    end

    it 'toda sexta de set' do
      expect_expression_map 'toda sexta de set', {:week_day=>[5], :month=>[9]}
    end

    it 'toda sexta de setembro' do
      expect_expression_map 'toda sexta de setembro', {:week_day=>[5], :month=>[9]}
    end

    it 'toda sexta de out' do
      expect_expression_map 'toda sexta de out', {:week_day=>[5], :month=>[10]}
    end

    it 'toda sexta de outubro' do
      expect_expression_map 'toda sexta de outubro', {:week_day=>[5], :month=>[10]}
    end

    it 'toda sexta de nov' do
      expect_expression_map 'toda sexta de nov', {:week_day=>[5], :month=>[11]}
    end

    it 'toda sexta de novembro' do
      expect_expression_map 'toda sexta de novembro', {:week_day=>[5], :month=>[11]}
    end

    it 'toda sexta de dez' do
      expect_expression_map 'toda sexta de dez', {:week_day=>[5], :month=>[12]}
    end

    it 'toda sexta de dezembro' do
      expect_expression_map 'toda sexta de dezembro', {:week_day=>[5], :month=>[12]}
    end

    it 'toda sex de jan' do
      expect_expression_map 'toda sex de jan', {:week_day=>[5], :month=>[1]}
    end

    it 'toda sex de janeiro' do
      expect_expression_map 'toda sex de janeiro', {:week_day=>[5], :month=>[1]}
    end

    it 'toda sex de fev' do
      expect_expression_map 'toda sex de fev', {:week_day=>[5], :month=>[2]}
    end

    it 'toda sex de fevereiro' do
      expect_expression_map 'toda sex de fevereiro', {:week_day=>[5], :month=>[2]}
    end

    it 'toda sex de mar' do
      expect_expression_map 'toda sex de mar', {:week_day=>[5], :month=>[3]}
    end

    it 'toda sex de marco' do
      expect_expression_map 'toda sex de marco', {:week_day=>[5], :month=>[3]}
    end

    it 'toda sex de abr' do
      expect_expression_map 'toda sex de abr', {:week_day=>[5], :month=>[4]}
    end

    it 'toda sex de abril' do
      expect_expression_map 'toda sex de abril', {:week_day=>[5], :month=>[4]}
    end

    it 'toda sex de mai' do
      expect_expression_map 'toda sex de mai', {:week_day=>[5], :month=>[5]}
    end

    it 'toda sex de maio' do
      expect_expression_map 'toda sex de maio', {:week_day=>[5], :month=>[5]}
    end

    it 'toda sex de jun' do
      expect_expression_map 'toda sex de jun', {:week_day=>[5], :month=>[6]}
    end

    it 'toda sex de junho' do
      expect_expression_map 'toda sex de junho', {:week_day=>[5], :month=>[6]}
    end

    it 'toda sex de jul' do
      expect_expression_map 'toda sex de jul', {:week_day=>[5], :month=>[7]}
    end

    it 'toda sex de julho' do
      expect_expression_map 'toda sex de julho', {:week_day=>[5], :month=>[7]}
    end

    it 'toda sex de ago' do
      expect_expression_map 'toda sex de ago', {:week_day=>[5], :month=>[8]}
    end

    it 'toda sex de agosto' do
      expect_expression_map 'toda sex de agosto', {:week_day=>[5], :month=>[8]}
    end

    it 'toda sex de set' do
      expect_expression_map 'toda sex de set', {:week_day=>[5], :month=>[9]}
    end

    it 'toda sex de setembro' do
      expect_expression_map 'toda sex de setembro', {:week_day=>[5], :month=>[9]}
    end

    it 'toda sex de out' do
      expect_expression_map 'toda sex de out', {:week_day=>[5], :month=>[10]}
    end

    it 'toda sex de outubro' do
      expect_expression_map 'toda sex de outubro', {:week_day=>[5], :month=>[10]}
    end

    it 'toda sex de nov' do
      expect_expression_map 'toda sex de nov', {:week_day=>[5], :month=>[11]}
    end

    it 'toda sex de novembro' do
      expect_expression_map 'toda sex de novembro', {:week_day=>[5], :month=>[11]}
    end

    it 'toda sex de dez' do
      expect_expression_map 'toda sex de dez', {:week_day=>[5], :month=>[12]}
    end

    it 'toda sex de dezembro' do
      expect_expression_map 'toda sex de dezembro', {:week_day=>[5], :month=>[12]}
    end

    it 'toda sabado de jan' do
      expect_expression_map 'toda sabado de jan', {:week_day=>[6], :month=>[1]}
    end

    it 'toda sabado de janeiro' do
      expect_expression_map 'toda sabado de janeiro', {:week_day=>[6], :month=>[1]}
    end

    it 'toda sabado de fev' do
      expect_expression_map 'toda sabado de fev', {:week_day=>[6], :month=>[2]}
    end

    it 'toda sabado de fevereiro' do
      expect_expression_map 'toda sabado de fevereiro', {:week_day=>[6], :month=>[2]}
    end

    it 'toda sabado de mar' do
      expect_expression_map 'toda sabado de mar', {:week_day=>[6], :month=>[3]}
    end

    it 'toda sabado de marco' do
      expect_expression_map 'toda sabado de marco', {:week_day=>[6], :month=>[3]}
    end

    it 'toda sabado de abr' do
      expect_expression_map 'toda sabado de abr', {:week_day=>[6], :month=>[4]}
    end

    it 'toda sabado de abril' do
      expect_expression_map 'toda sabado de abril', {:week_day=>[6], :month=>[4]}
    end

    it 'toda sabado de mai' do
      expect_expression_map 'toda sabado de mai', {:week_day=>[6], :month=>[5]}
    end

    it 'toda sabado de maio' do
      expect_expression_map 'toda sabado de maio', {:week_day=>[6], :month=>[5]}
    end

    it 'toda sabado de jun' do
      expect_expression_map 'toda sabado de jun', {:week_day=>[6], :month=>[6]}
    end

    it 'toda sabado de junho' do
      expect_expression_map 'toda sabado de junho', {:week_day=>[6], :month=>[6]}
    end

    it 'toda sabado de jul' do
      expect_expression_map 'toda sabado de jul', {:week_day=>[6], :month=>[7]}
    end

    it 'toda sabado de julho' do
      expect_expression_map 'toda sabado de julho', {:week_day=>[6], :month=>[7]}
    end

    it 'toda sabado de ago' do
      expect_expression_map 'toda sabado de ago', {:week_day=>[6], :month=>[8]}
    end

    it 'toda sabado de agosto' do
      expect_expression_map 'toda sabado de agosto', {:week_day=>[6], :month=>[8]}
    end

    it 'toda sabado de set' do
      expect_expression_map 'toda sabado de set', {:week_day=>[6], :month=>[9]}
    end

    it 'toda sabado de setembro' do
      expect_expression_map 'toda sabado de setembro', {:week_day=>[6], :month=>[9]}
    end

    it 'toda sabado de out' do
      expect_expression_map 'toda sabado de out', {:week_day=>[6], :month=>[10]}
    end

    it 'toda sabado de outubro' do
      expect_expression_map 'toda sabado de outubro', {:week_day=>[6], :month=>[10]}
    end

    it 'toda sabado de nov' do
      expect_expression_map 'toda sabado de nov', {:week_day=>[6], :month=>[11]}
    end

    it 'toda sabado de novembro' do
      expect_expression_map 'toda sabado de novembro', {:week_day=>[6], :month=>[11]}
    end

    it 'toda sabado de dez' do
      expect_expression_map 'toda sabado de dez', {:week_day=>[6], :month=>[12]}
    end

    it 'toda sabado de dezembro' do
      expect_expression_map 'toda sabado de dezembro', {:week_day=>[6], :month=>[12]}
    end

    it 'toda sab de jan' do
      expect_expression_map 'toda sab de jan', {:week_day=>[6], :month=>[1]}
    end

    it 'toda sab de janeiro' do
      expect_expression_map 'toda sab de janeiro', {:week_day=>[6], :month=>[1]}
    end

    it 'toda sab de fev' do
      expect_expression_map 'toda sab de fev', {:week_day=>[6], :month=>[2]}
    end

    it 'toda sab de fevereiro' do
      expect_expression_map 'toda sab de fevereiro', {:week_day=>[6], :month=>[2]}
    end

    it 'toda sab de mar' do
      expect_expression_map 'toda sab de mar', {:week_day=>[6], :month=>[3]}
    end

    it 'toda sab de marco' do
      expect_expression_map 'toda sab de marco', {:week_day=>[6], :month=>[3]}
    end

    it 'toda sab de abr' do
      expect_expression_map 'toda sab de abr', {:week_day=>[6], :month=>[4]}
    end

    it 'toda sab de abril' do
      expect_expression_map 'toda sab de abril', {:week_day=>[6], :month=>[4]}
    end

    it 'toda sab de mai' do
      expect_expression_map 'toda sab de mai', {:week_day=>[6], :month=>[5]}
    end

    it 'toda sab de maio' do
      expect_expression_map 'toda sab de maio', {:week_day=>[6], :month=>[5]}
    end

    it 'toda sab de jun' do
      expect_expression_map 'toda sab de jun', {:week_day=>[6], :month=>[6]}
    end

    it 'toda sab de junho' do
      expect_expression_map 'toda sab de junho', {:week_day=>[6], :month=>[6]}
    end

    it 'toda sab de jul' do
      expect_expression_map 'toda sab de jul', {:week_day=>[6], :month=>[7]}
    end

    it 'toda sab de julho' do
      expect_expression_map 'toda sab de julho', {:week_day=>[6], :month=>[7]}
    end

    it 'toda sab de ago' do
      expect_expression_map 'toda sab de ago', {:week_day=>[6], :month=>[8]}
    end

    it 'toda sab de agosto' do
      expect_expression_map 'toda sab de agosto', {:week_day=>[6], :month=>[8]}
    end

    it 'toda sab de set' do
      expect_expression_map 'toda sab de set', {:week_day=>[6], :month=>[9]}
    end

    it 'toda sab de setembro' do
      expect_expression_map 'toda sab de setembro', {:week_day=>[6], :month=>[9]}
    end

    it 'toda sab de out' do
      expect_expression_map 'toda sab de out', {:week_day=>[6], :month=>[10]}
    end

    it 'toda sab de outubro' do
      expect_expression_map 'toda sab de outubro', {:week_day=>[6], :month=>[10]}
    end

    it 'toda sab de nov' do
      expect_expression_map 'toda sab de nov', {:week_day=>[6], :month=>[11]}
    end

    it 'toda sab de novembro' do
      expect_expression_map 'toda sab de novembro', {:week_day=>[6], :month=>[11]}
    end

    it 'toda sab de dez' do
      expect_expression_map 'toda sab de dez', {:week_day=>[6], :month=>[12]}
    end

    it 'toda sab de dezembro' do
      expect_expression_map 'toda sab de dezembro', {:week_day=>[6], :month=>[12]}
    end

    it 'toda domingo de jan' do
      expect_expression_map 'toda domingo de jan', {:week_day=>[0], :month=>[1]}
    end

    it 'toda domingo de janeiro' do
      expect_expression_map 'toda domingo de janeiro', {:week_day=>[0], :month=>[1]}
    end

    it 'toda domingo de fev' do
      expect_expression_map 'toda domingo de fev', {:week_day=>[0], :month=>[2]}
    end

    it 'toda domingo de fevereiro' do
      expect_expression_map 'toda domingo de fevereiro', {:week_day=>[0], :month=>[2]}
    end

    it 'toda domingo de mar' do
      expect_expression_map 'toda domingo de mar', {:week_day=>[0], :month=>[3]}
    end

    it 'toda domingo de marco' do
      expect_expression_map 'toda domingo de marco', {:week_day=>[0], :month=>[3]}
    end

    it 'toda domingo de abr' do
      expect_expression_map 'toda domingo de abr', {:week_day=>[0], :month=>[4]}
    end

    it 'toda domingo de abril' do
      expect_expression_map 'toda domingo de abril', {:week_day=>[0], :month=>[4]}
    end

    it 'toda domingo de mai' do
      expect_expression_map 'toda domingo de mai', {:week_day=>[0], :month=>[5]}
    end

    it 'toda domingo de maio' do
      expect_expression_map 'toda domingo de maio', {:week_day=>[0], :month=>[5]}
    end

    it 'toda domingo de jun' do
      expect_expression_map 'toda domingo de jun', {:week_day=>[0], :month=>[6]}
    end

    it 'toda domingo de junho' do
      expect_expression_map 'toda domingo de junho', {:week_day=>[0], :month=>[6]}
    end

    it 'toda domingo de jul' do
      expect_expression_map 'toda domingo de jul', {:week_day=>[0], :month=>[7]}
    end

    it 'toda domingo de julho' do
      expect_expression_map 'toda domingo de julho', {:week_day=>[0], :month=>[7]}
    end

    it 'toda domingo de ago' do
      expect_expression_map 'toda domingo de ago', {:week_day=>[0], :month=>[8]}
    end

    it 'toda domingo de agosto' do
      expect_expression_map 'toda domingo de agosto', {:week_day=>[0], :month=>[8]}
    end

    it 'toda domingo de set' do
      expect_expression_map 'toda domingo de set', {:week_day=>[0], :month=>[9]}
    end

    it 'toda domingo de setembro' do
      expect_expression_map 'toda domingo de setembro', {:week_day=>[0], :month=>[9]}
    end

    it 'toda domingo de out' do
      expect_expression_map 'toda domingo de out', {:week_day=>[0], :month=>[10]}
    end

    it 'toda domingo de outubro' do
      expect_expression_map 'toda domingo de outubro', {:week_day=>[0], :month=>[10]}
    end

    it 'toda domingo de nov' do
      expect_expression_map 'toda domingo de nov', {:week_day=>[0], :month=>[11]}
    end

    it 'toda domingo de novembro' do
      expect_expression_map 'toda domingo de novembro', {:week_day=>[0], :month=>[11]}
    end

    it 'toda domingo de dez' do
      expect_expression_map 'toda domingo de dez', {:week_day=>[0], :month=>[12]}
    end

    it 'toda domingo de dezembro' do
      expect_expression_map 'toda domingo de dezembro', {:week_day=>[0], :month=>[12]}
    end

    it 'toda dom de jan' do
      expect_expression_map 'toda dom de jan', {:week_day=>[0], :month=>[1]}
    end

    it 'toda dom de janeiro' do
      expect_expression_map 'toda dom de janeiro', {:week_day=>[0], :month=>[1]}
    end

    it 'toda dom de fev' do
      expect_expression_map 'toda dom de fev', {:week_day=>[0], :month=>[2]}
    end

    it 'toda dom de fevereiro' do
      expect_expression_map 'toda dom de fevereiro', {:week_day=>[0], :month=>[2]}
    end

    it 'toda dom de mar' do
      expect_expression_map 'toda dom de mar', {:week_day=>[0], :month=>[3]}
    end

    it 'toda dom de marco' do
      expect_expression_map 'toda dom de marco', {:week_day=>[0], :month=>[3]}
    end

    it 'toda dom de abr' do
      expect_expression_map 'toda dom de abr', {:week_day=>[0], :month=>[4]}
    end

    it 'toda dom de abril' do
      expect_expression_map 'toda dom de abril', {:week_day=>[0], :month=>[4]}
    end

    it 'toda dom de mai' do
      expect_expression_map 'toda dom de mai', {:week_day=>[0], :month=>[5]}
    end

    it 'toda dom de maio' do
      expect_expression_map 'toda dom de maio', {:week_day=>[0], :month=>[5]}
    end

    it 'toda dom de jun' do
      expect_expression_map 'toda dom de jun', {:week_day=>[0], :month=>[6]}
    end

    it 'toda dom de junho' do
      expect_expression_map 'toda dom de junho', {:week_day=>[0], :month=>[6]}
    end

    it 'toda dom de jul' do
      expect_expression_map 'toda dom de jul', {:week_day=>[0], :month=>[7]}
    end

    it 'toda dom de julho' do
      expect_expression_map 'toda dom de julho', {:week_day=>[0], :month=>[7]}
    end

    it 'toda dom de ago' do
      expect_expression_map 'toda dom de ago', {:week_day=>[0], :month=>[8]}
    end

    it 'toda dom de agosto' do
      expect_expression_map 'toda dom de agosto', {:week_day=>[0], :month=>[8]}
    end

    it 'toda dom de set' do
      expect_expression_map 'toda dom de set', {:week_day=>[0], :month=>[9]}
    end

    it 'toda dom de setembro' do
      expect_expression_map 'toda dom de setembro', {:week_day=>[0], :month=>[9]}
    end

    it 'toda dom de out' do
      expect_expression_map 'toda dom de out', {:week_day=>[0], :month=>[10]}
    end

    it 'toda dom de outubro' do
      expect_expression_map 'toda dom de outubro', {:week_day=>[0], :month=>[10]}
    end

    it 'toda dom de nov' do
      expect_expression_map 'toda dom de nov', {:week_day=>[0], :month=>[11]}
    end

    it 'toda dom de novembro' do
      expect_expression_map 'toda dom de novembro', {:week_day=>[0], :month=>[11]}
    end

    it 'toda dom de dez' do
      expect_expression_map 'toda dom de dez', {:week_day=>[0], :month=>[12]}
    end

    it 'toda dom de dezembro' do
      expect_expression_map 'toda dom de dezembro', {:week_day=>[0], :month=>[12]}
    end

    def expect_expression_map expression, expression_map
      factory = NaturalDateExpressionFactory.new :'pt-BR'
      nd = factory.create(expression, Date.today)

      expect(nd.data).to eq([expression_map])
    end
  end
end

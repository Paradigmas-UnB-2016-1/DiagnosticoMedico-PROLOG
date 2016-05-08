sexo(masculino).
sexo(feminino).		

sintoma(dorDuranteRelaçãoSexual).
sintoma(coceiraNosOrgãosSexuais).

sintoma(dorAoUrinar).
sintoma(dorDuranteRelacao).
sintoma(sangrametoForaDoPeriodoDeMenstruacao).
sintoma(corrimentoPeloColoDoUtero).

sintoma(dorNosTestículos).
sintoma(sensacaoDeArdor).

/* Mulher */
gonorreia(sintoma(dorAoUrinar),sexo(feminino)).
gonorreia(sintoma(dorDuranteRelacao),sexo(feminino)).
gonorreia(sintoma(sangrametoForaDoPeriodoDeMenstruacao),sexo(feminino)).
gonorreia(sintoma(corrimentoPeloColoDoUtero),sexo(feminino)).
/* Homem */
gonorreia(sintoma(sensacaoDeArdor),sexo(masculino)).
gonorreia(sintoma(dorNosTestículos),sexo(masculino)).
clamidia(sintoma(dorAoUrinar),sexo(feminino)).

/* Mulher */
clamidia(sintoma(dorAoUrinar),sexo(feminino)).
clamidia(sintoma(dorDuranteRelacao),sexo(feminino)).
clamidia(sintoma(sangrametoForaDoPeriodoDeMenstruacao),sexo(feminino)).
clamidia(sintoma(corrimentoPeloColoDoUtero),sexo(feminino)).
/* Homem */
clamidia(sintoma(sensacaoDeArdor),sexo(masculino)).
clamidia(sintoma(dorNosTestículos),sexo(masculino)).
clamidia(sintoma(dorAoUrinar),sexo(feminino)).

tricomoníase(sintoma(dorDuranteRelacao),sexo(feminino)).
tricomoníase(sintoma(dorAoUrinar),sexo(feminino)).
tricomoníase(sintoma(corrimentoPeloColoDoUtero),sexo(feminino)).
tricomoníase(sintoma(coceiraNosOrgãosSexuais),sexo(feminino)).
tricomoníase(sintoma(coceiraNosOrgãosSexuais),sexo(masculino)).
tricomoníase(sintoma(dorAoUrinar),sexo(masculino)).



/* */
issoE(X,Z,Y):-gonorreia(sintoma(X),sexo(Y)),gonorreia(sintoma(Z),sexo(Y)).

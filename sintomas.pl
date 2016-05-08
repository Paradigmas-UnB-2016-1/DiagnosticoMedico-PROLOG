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

gonorreia(sintoma(dorAoUrinar),sexo(feminino)).
gonorreia(sintoma(dorDuranteRelacao),sexo(feminino)).
gonorreia(sintoma(sangrametoForaDoPeriodoDeMenstruacao),sexo(feminino)).
gonorreia(sintoma(corrimentoPeloColoDoUtero),sexo(feminino)).
gonorreia(sintoma(sensacaoDeArdor),sexo(masculino)).
gonorreia(sintoma(dorNosTestículos),sexo(masculino)).

clamidia(sintoma(dorAoUrinar),sexo(feminino)).
clamidia(sintoma(dorAoUrinar),sexo(masculino)).
clamidia(sintoma(dorDuranteRelacao),sexo(feminino)).
clamidia(sintoma(sangrametoForaDoPeriodoDeMenstruacao),sexo(feminino)).
clamidia(sintoma(corrimentoPeloColoDoUtero),sexo(feminino)).
clamidia(sintoma(sensacaoDeArdor),sexo(masculino)).
clamidia(sintoma(dorNosTestículos),sexo(masculino)).

tricomoníase(sintoma(dorDuranteRelacao),sexo(feminino)).
tricomoníase(sintoma(dorAoUrinar),sexo(feminino)).
tricomoníase(sintoma(corrimentoPeloColoDoUtero),sexo(feminino)).
tricomoníase(sintoma(coceiraNosOrgãosSexuais),sexo(feminino)).
tricomoníase(sintoma(coceiraNosOrgãosSexuais),sexo(masculino)).
tricomoníase(sintoma(dorAoUrinar),sexo(masculino)).

sifilis(sintoma(presençaFeridasNaRegiãoGenital),sexo(feminino)).
sifilis(sintoma(protuberanciasNosGenitais),sexo(feminino)).
sifilis(sintoma(presençaFeridasNaRegiãoGenital),sexo(masculino)).
sifilis(sintoma(protuberanciasNosGenitais),sexo(masculino)).

crancoMole(sintoma(feridasMultiplas),sexo(feminino)).
crancoMole(sintoma(nodulosNaVirilha),sexo(feminino)).
crancoMole(sintoma(feridasMultiplas),sexo(masculino)).
crancoMole(sintoma(nodulosNaVirilha),sexo(masculino)).

herpesGenital(sintoma(erupcoesCorpo),sexo(masculino)).
herpesGenital(sintoma(manchasNaVirilha),sexo(masculino)).
herpesGenital(sintoma(erupcoesCorpo),sexo(feminino)).
herpesGenital(sintoma(manchasNaVirilha),sexo(feminino)).

/* */
issoE(X,Z,Y):-gonorreia(sintoma(X),sexo(Y)),gonorreia(sintoma(Z),sexo(Y)).

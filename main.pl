
iniciar :- use_module(library(pce)),
    new(D, dialog('Identificador do paciente')),
    send(D, append(new(NameItem, text_item(name)))),
    send(D, append(button(ok, message(D, return, NameItem?selection)))),
    send(D, append(button(cancel, message(D, return, @nil)))),
    send(D, default_button(ok)),
    get(D, confirm, Rval),
    free(D),
    Rval \== @nil,
    Paciente = Rval,
    diagnostico(Paciente,Doenca),
    escreveNaLista(['O paciente ',Paciente,' possivelmente tem ',Doenca,'.']),nl.

iniciar :-
    write('sua doenca não pode ser diagnosticada.'),nl.

sintoma(Paciente,corrimentoPeloColoDoUtero) :-
    escreveNaLista(['O ',Paciente,' apresenta corrimento no colo do utero (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,coceiraNaGenitalia) :-
    escreveNaLista(['O ',Paciente,' apresenta coceira na genitalia (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,dorAoUrinar) :-
    escreveNaLista(['O ',Paciente,' apresenta dor ao urinar (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,odorRuimNaRegiao) :-
    escreveNaLista(['O ',Paciente,' apresenta odor ruim na região (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,dorDuranteRelacaoSexual) :-
    escreveNaLista(['O ',Paciente,' apresenta dor durante relacao sexual (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,sangramentoForaDoPeriodoMenstruacao) :-
    escreveNaLista(['O ',Paciente,' apresenta sangramento fora do periodo menstruacao (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,sangramentoDuranteRelacoaSexual) :-
    escreveNaLista(['O ',Paciente,' apresenta sangramento durante relacao sexual (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,dorNosTesticulos) :-
    escreveNaLista(['O ',Paciente,' apresenta dor nos testiculos (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,presençaFeridasNaRegiãoGenital) :-
    escreveNaLista(['O ',Paciente,' apresenta presença de feridas na região genital (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,protuberanciasNosGenitais) :-
    escreveNaLista(['O ',Paciente,' apresenta protuberâncias como verrugas nos genitais, úlceras ou úlceras indolores (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,feridasMultiplas) :-
    escreveNaLista(['O ',Paciente,' apresenta feridas múltiplas e dolorosas de tamanho pequeno (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,nodulosNaVirilha) :-
    escreveNaLista(['O ',Paciente,' apresenta nódulos (caroços ou ínguas) navirilha (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,erupcoesCorpo) :-
    escreveNaLista(['O ',Paciente,' apresenta bolha, erupções, sarna ou úlcera na região genital (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

sintoma(Paciente,manchasNaVirilha) :-
    escreveNaLista(['O ',Paciente,' apresenta manchas vermelhas e pequenas bolhas esbranquiçadas na região genital (s/n) ?']),
    resposta(RespostaDoSintoma),
    RespostaDoSintoma ='s'.

diagnostico(Paciente,gonorreia) :- /* Ja foi */
    sintoma(Paciente,dorAoUrinar), 
    sintoma(Paciente,odorRuimNaRegiao),
    sintoma(Paciente,coceiraNaGenitalia), 
    /* Mulher */
    sintoma(Paciente,corrimentoPeloColoDoUtero), 
    sintoma(Paciente,sangramentoForaDoPeriodoMenstruacao),
    sintoma(Paciente,dorDuranteRelacaoSexual),
    sintoma(Paciente,sangramentoDuranteRelacoaSexual),
    /* Homens */
    sintoma(Paciente,dorNosTesticulos).

diagnostico(Paciente,clamidia) :- /* Ja foi */
    sintoma(Paciente,dorAoUrinar), 
    sintoma(Paciente,odorRuimNaRegiao),
    sintoma(Paciente,coceiraNaGenitalia), 
    /* Mulher */
    sintoma(Paciente,corrimentoPeloColoDoUtero), 
    sintoma(Paciente,sangramentoForaDoPeriodoMenstruacao),
    sintoma(Paciente,dorDuranteRelacaoSexual),
    sintoma(Paciente,sangramentoDuranteRelacoaSexual),
    /* Homens */
    sintoma(Paciente,dorNosTesticulos).

diagnostico(Paciente,tricomoniase) :-
    sintoma(Paciente,corrimentoPeloColoDoUtero), 
    sintoma(Paciente,dorAoUrinar),
    sintoma(Paciente,odorRuimNaRegiao),
    sintoma(Paciente,coceiraNaGenitalia),
    sintoma(Paciente,dorDuranteRelacaoSexual). 

diagnostico(Paciente,sífilis) :-
    sintoma(Paciente,presençaFeridasNaRegiãoGenital),
    sintoma(Paciente,protuberanciasNosGenitais).

diagnostico(Paciente,crancoMole) :-
    sintoma(Paciente,feridasMultiplas),
    sintoma(Paciente,nodulosNaVirilha).

diagnostico(Paciente,herpesGenital) :-
    sintoma(Paciente,erupcoesCorpo),
    sintoma(Paciente,manchasNaVirilha).


escreveNaLista([]).
escreveNaLista([Termo| Termos]) :-
    write(Termo),
    escreveNaLista(Termos).

resposta(RespostaDoSintoma) :-
    get_single_char(Codigo),
    put_code(Codigo), nl,
    char_code(RespostaDoSintoma, Codigo).

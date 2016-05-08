
iniciar :- use_module(library(pce)),
    new(D, dialog('Identificador do paciente')),
    send(D, append(new(NameItem, text_item(name)))),
    send(D, append(button(ok, message(D, return, NameItem?selection)))),
    send(D, append(button(cancel, message(D, return, @nil)))),
    send(D, default_button(ok)),
    get(D, confirm, Rval),
    free(D),
    Rval \== @nil,
    Paciente = Rval.
    read(Paciente),
    diagnostico(Paciente,Doenca),
    escreveNaLista(['O ',Paciente,' possivelmente tem a ',Doenca,'.']),nl.

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


diagnostico(Paciente,gonorreia) :-
    sintoma(Paciente,corrimentoPeloColoDoUtero),
    sintoma(Paciente,coceiraNaGenitalia),
    sintoma(Paciente,dorAoUrinar),
    sintoma(Paciente,odorRuimNaRegiao).

diagnostico(Paciente,tricomoniase) :-
    sintoma(Paciente,corrimentoPeloColoDoUtero),
    sintoma(Paciente,dorAoUrinar),
    sintoma(Paciente,odorRuimNaRegiao),
    sintoma(Paciente,coceiraNaGenitalia).


escreveNaLista([]).
escreveNaLista([Termo| Termos]) :-
    write(Termo),
    escreveNaLista(Termos).

resposta(RespostaDoSintoma) :-
    get_single_char(Codigo),
    put_code(Codigo), nl,
    char_code(RespostaDoSintoma, Codigo).
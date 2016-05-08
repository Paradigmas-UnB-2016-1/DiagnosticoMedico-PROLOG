go :-
    write('Qual é o nome do paciente? '),
    read(Paciente),
    diagnostico(Paciente,Doenca),
    write_list(['O ',Paciente,' possivelmente tem a ',Doenca,'.']),nl.

go :-
    write('sua doenca não pode ser diagnosticada.'),nl.

sintoma(Paciente,corrimentoPeloColoDoUtero) :-
    write_list(['O ',Paciente,' apresenta corrimento no colo do utero (s/n) ?']),
    response(Reply),
    Reply='s'.

sintoma(Paciente,coceiraNaGenitalia) :-
    write_list(['O ',Paciente,' apresenta coceira na genitalia (s/n) ?']),
    response(Reply),
    Reply='s'.

sintoma(Paciente,dorAoUrinar) :-
    write_list(['O ',Paciente,' apresenta dor ao urinar (s/n) ?']),
    response(Reply),
    Reply='s'.

sintoma(Paciente,odorRuimNaRegiao) :-
    write_list(['O ',Paciente,' apresenta odor ruim na região (s/n) ?']),
    response(Reply),
    Reply='s'.


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



write_list([]).
write_list([Term| Terms]) :-
    write(Term),
    write_list(Terms).

response(Reply) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Reply, Code).
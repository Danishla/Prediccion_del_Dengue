% Reglas de diagnóstico
gripe(X) :- malestar(X), fiebre(X), tos(X), sec_nas(X).
dengue(X) :- malestar(X), fiebre(X), dolor_art_mus(X), rash(X), dolor_ojos(X), nausea(X).

% Diagnóstico
diagnostico(X) :- nl, write('Se investiga GRIPE'), gripe(X),
                  nl, write(X), write(' tiene sintomas de GRIPE.'), fail.
diagnostico(X) :- nl, write('Se investiga DENGUE'), dengue(X),
                  nl, write(X), write(' tiene sospecha de DENGUE.'), fail.
diagnostico(X) :- nl, write('NO SE LOGRO UN DIAGNOSTICO.').

% Preguntas y síntomas
pregunta(X, P) :- write(X), write(' '), write(P), read(Respuesta), Respuesta == s.
malestar(X) :- pregunta(X, 'tiene malestar? ').
fiebre(X) :- pregunta(X, 'tiene fiebre? ').
tos(X) :- pregunta(X, 'tiene tos? ').
sec_nas(X) :- pregunta(X, 'tiene secrecion nasal? ').
dolor_art_mus(X) :- pregunta(X, 'tiene dolor muscular o en articulaciones? ').
rash(X) :- pregunta(X, 'tiene rash? ').
dolor_ojos(X) :- pregunta(X, 'tiene dolor detrás de los ojos? ').
nausea(X) :- pregunta(X, 'tiene nauseas? ').

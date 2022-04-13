
:-[satisfy, induce_ifthen, atributos, alojamentos_ifthen].

% the goal is to classify
%learn_rules:-
%	learn(nao),  % negative examples
%	learn(sim), % positive examples
%        % save new rules:
%	tell('restaurantes_ifthen.pl'),
%	listing(<==),
%	told.

% example of classifying
q1(Class):- classify([idade=idade18a25,motivo=ilha,restaurante=sim,pa=sim,ginasio=sim],Class), write(classify([idade=idade18a25,motivo=ilha,restaurante=sim,pa=sim,ginasio=sim],Class)).
q2(Class):- classify([idade=idade18a25,motivo=ilha,restaurante=nao,pa=sim,ginasio=sim],Class).
q3(Class):- classify([idade=idade18a25,motivo=ilha,restaurante=nao,pa=sim,ginasio=nao],Class).
q5(Class):- classify([idade=idade26a33,motivo=ilha,restaurante=sim,pa=sim,ginasio=sim], Class).

q4(Class):- findall(A,fact(A),Z), classify(Z,Class), retractall(fact(_)).



menu:-
     write(
"
                  Tem duvidas entre comprar uma refeicao num restaurante ou num hipermercado?
                  Seja bem-vindo ao sistema de recomendacao! Esperamos corresponder as suas expetativas *_*

"
),nl,

    write(
"____________________________________________________________________________________________________

                    Indique a sua idade

                    1- 18 a 25
                    2- 26 a 33
                    3- 34 a 45
                    4- Maior de 45

                    0- Sair


___________________________________________________________________________________________________"
),nl,nl,
    read(Idade),
        ((Idade == 0), halt;
        (Idade == 1), assert(fact(idade=idade18a25));
        (Idade == 2), assert(fact(idade=idade26a33));
        (Idade == 3), assert(fact(idade=idade34a45));
        (Idade == 4), assert(fact(idade=idademaior45)), nl,


    write(
"____________________________________________________________________________________________________

                    Qual o principal motivo que tem em consideracao para visitar o Funchal?

                    1- Conhecer a ilha
                    2- Relaxar

                    0- Sair


____________________________________________________________________________________________________"
),nl,nl,
    read(Motivo),
        ((Motivo == 0), halt;
        (Motivo == 1), assert(fact(motivo=ilha));
        (Motivo == 2), assert(fact(motivo=relaxar)), nl,

    write(
"____________________________________________________________________________________________________

                    Pretende ter restaurante no alojamento?

                    1- Sim
                    2- Não

                    0- Sair


____________________________________________________________________________________________________"
),nl,nl,
    read(Restaurante),
        ((Restaurante == 0), halt;
        (Restaurante == 1), assert(fact(restaurante=sim));
        (Restaurante == 2), assert(fact(restaurante=nao)), nl,

    write(
"____________________________________________________________________________________________________

                    Pretende ter o pequeno-almoço incluído na estadia ?

                    1- Sim
                    2- Não

                    0- Sair


____________________________________________________________________________________________________"
),nl,nl,
    read(Pa),
        ((Pa == 0), halt;
        (Pa == 1), assert(fact(pa=sim));
        (Pa == 2), assert(fact(pa=nao)), nl,

write("____________________________________________________________________________________________________
                Pretende ter ginásio no alojamento?

                    1- Sim
                    2- Não

                    0- Sair


____________________________________________________________________________________________________"
),nl,nl
    read(Ginasio),
        ((Ginasio == 0), halt;
        (Ginasio == 1), assert(fact(ginasio=sim));
        (Ginasio == 2), assert(fact(ginasio=nao)), nl,
                                                                                                     "
                                                                                                     ).
 write('RESULTADO'),nl,

q4(C),

 write('Alojamento: '), write(C),nl,nl,



 write("Disfrute da sua refeicao! Obrigada!"),nl.
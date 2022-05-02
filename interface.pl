
:-[satisfy, induce_ifthen, alojamentos_ifthen].

% the goal is to classify
learn_rules:-
	learn(nao),  % negative examples
	learn(sim), % positive examples
        % save new rules:
	tell('alojamentos_ifthen.pl'),
	listing(<==),
	told.

% example of classifying
q1(Class):- classify([idade=idade18a25,lazer=sim,ativa=sim],Class).
q2(Class):- classify([idade=idade34a45,ativa=nao],Class).
%q3(Class):- classify([idade=idade18a25,motivo=ilha,restaurante=nao,pa=sim,ginasio=nao],Class).
%q5(Class):- classify([idade=idade26a33,motivo=ilha,restaurante=sim,pa=sim,ginasio=sim], Class).

q4(Class):- findall(A,fact(A),Z), classify(Z,Class), retractall(fact(_)).



menu1:-
     write(
"
                  Tem duvidas se devera escolher um alojamento com restaurante onde possa fazer as suas refeicoes ou explorar restaurantes locais?
                  Temos o sistema perfeito para si! Com base nas suas respostas, seremos a ajuda que necessita!


"
),nl,

    write(
"____________________________________________________________________________________________________

                    Qual a sua idade?

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
        (Idade == 4), assert(fact(idade=idademaior45))), nl,


    write(
"____________________________________________________________________________________________________

                    Em ambiente de ferias, gosta de ser uma pessoa ativa?

                    1- Sim
                    2- Nao

                    0- Sair


____________________________________________________________________________________________________"
),nl,nl,
    read(Ativa),
        ((Ativa == 0), halt;
        (Ativa == 1), assert(fact(ativa=sim));
        (Ativa == 2), assert(fact(ativa=nao))), nl,

    write(
"____________________________________________________________________________________________________

                    Gostaria de conhecer mais sobre a cultura do seu destino de ferias?

                    1- Sim
                    2- Nao

                    0- Sair


____________________________________________________________________________________________________"
),nl,nl,
    read(Cultura),
        ((Cultura == 0), halt;
        (Cultura == 1), assert(fact(conhecer=sim));
        (Cultura == 2), assert(fact(conhecer=nao))), nl,

    write(
"____________________________________________________________________________________________________

                    No local em que ficasse alojado, gostaria que lhe fossem proporcionados momentos de lazer (piscina ou spa)?

                    1- Sim
                    2- Nao

                    0- Sair


____________________________________________________________________________________________________"
),nl,nl,
    read(Lazer),
        ((Lazer == 0), halt;
        (Lazer == 1), assert(fact(lazer=sim));
        (Lazer == 2), assert(fact(lazer=nao))), nl,


 write('RESULTADO'),nl,

q4(C),

write('Fazer as refeicoes no alojamento: '), write(C),nl,nl,



write('Esperamos que tenhamos ajudado! Obrigada!'),nl.
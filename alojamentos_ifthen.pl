:- dynamic (<==)/2.

%sim comer no alojamento, nao - comer fora

nao<==[[idade=idade26a33], [idade=idade18a25, lazer=sim],[ativa=sim],[idade=idade34a45, ativa=sim]].
sim<==[[idade=idademaior45], [idade=idade34a45,ativa=nao]].


%if Qual a sua idade? = 26 a 33 then Refeições em restaurantes locais  (1 / 13)
%if Qual a sua idade? = 18 a 25 and No local em que ficasse alojado, gostaria que lhe fossem proporcionados momentos de lazer (piscina ou spa)? = Sim then Refeições em restaurantes locais  (6 / 54)
%else Refeições no alojamento  (45 / 16)

%if Qual a sua idade? = 26 a 33 then Refeições em restaurantes locais  (1 / 21)
%if Em ambiente de férias, gosta de ser uma pessoa ativa? = Sim then Refeições em restaurantes locais  (16 / 80)
%else Refeições no alojamento  (32 / 3)

%Restaurantes locais:
%- idade 26 a 33
%- idade 18 a 25 and querer momentos de lazer
%- ser pessoa ativa
%- idade 34 a 45 and ser pessoa ativa

%Restaurante no alojamento:
%- todos os outros
%- idade maior 45
%- idade 34 a 45 and nao ser pessoa ativa
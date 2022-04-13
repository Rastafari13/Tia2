:- dynamic attribute/2.

attribute(idade, [idade18a25, idade26a33, idade34a45, idademaior45]).
attribute(motivo, [ilha, relaxar]).
attribute(restaurante, [sim, nao]).
attribute(pa, [sim,nao]).
attibrute(ginasio, [sim,nao]).

:- dynamic example/2.

example([idade=idade18a25,motivo=ilha,restaurante=sim,pa=sim,ginasio=sim]).
example([idade=idade18a25,motivo=ilha,restaurante=nao,pa=sim,ginasio=sim]).
example([idade=idade18a25,motivo=ilha,restaurante=nao,pa=sim,ginasio=nao]).
example([idade=idade26a33,motivo=ilha,restaurante=sim,pa=sim,ginasio=sim]).
example([idade=idade26a33,motivo=ilha,restaurante=nao,pa=sim,ginasio=sim]).
example([idade=idade26a33,motivo=ilha,restaurante=nao,pa=sim,ginasio=nao]).
example([idade=idade26a33,motivo=relaxar,restaurante=sim,pa=sim,ginasio=sim]).
example([idade=idade26a33,motivo=relaxar,restaurante=sim,pa=sim,ginasio=nao]).
example([idade=idade34a45,motivo=relaxar,restaurante=sim,pa=sim,ginasio=sim]).
example([idade=idade34a45,motivo=relaxar,restaurante=sim,pa=sim,ginasio=nao]).
example([idade=idade18a25,motivo=relaxar,restaurante=sim,pa=sim,ginasio=nao]).

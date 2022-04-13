
satisfy( Object, Conj)  :-
   \+ ( member( Att = Val, Conj),
         member( Att = ValX, Object),
         ValX \== Val).
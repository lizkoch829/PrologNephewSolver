%Liz Koch
%Program 3
%

:-style_check(-singleton).
go:-solution(X),write('Solution'),nl, output(X), fail.
output([A,B,C]):-write(A),nl,write(B),nl, write(C).



solution(X):-
    X=[nephew(huey,_,_,_),
       nephew(dewey,_,yellow,_),
       %Deweys shirt is yellow
       nephew(louie,_,_,giraffe)
       %Louie wears the shirt with the giraffe
      ],
    member(nephew(_,4,_,_),X),
    member(nephew(_,5,_,camel),X),
    %the 5 year old wears the shirt with the camel
    member(nephew(Y,6,_,_),X),
    member(nephew(_,_,white,W),X),
    member(nephew(dewey,_,yellow,_),X),
    member(nephew(Y,_,green,_),X),
    member(nephew(_,_,_,panda),X),
    member(nephew(louie,_,_,giraffe),X),
    member(nephew(_,5,_,camel),X),
	Y\=huey,W\=panda.
        %Huey is younger than the nephew with the green
        %shirt, therefore can't be 6 or wearing green
        %the panda is not on the white shirt









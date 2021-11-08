
%IMPLEMENTATION OF SUFFIX FUNCTION

suffix(List1,List2):-
    length(List1,Length1),
    length(List2,Length2),
    (Length2 >= Length1 -> X is (Length2 - Length1), splitSuffix(List2,X,ResultList),equalListSuffix(List1,ResultList); %checks the length of lists if List-2 < List-1 then it will not be a suffix.
    write("Not a suffix\n")).

splitSuffix(List,0,List).   %Base case, ends the recursion of splitting the list.

splitSuffix([_|RemList],I,Result) :- I > 0, I1 is I - 1, splitSuffix(RemList, I1, Result).

equalListSuffix([H1|T1],[H2|T2]):-
    (H1=H2 -> equalListSuffix(T1,T2);
     write("Not a suffix\n")).

equalListSuffix([],[]):- write("Yes, it is a suffix\n").    %End case, if reaches here then it means the given list was a prefix.


%IMPLEMENTATION OF PREFIX FUNCTION

prefix(List1,List2):-
    length(List1,Length1),
    length(List2,Length2),
    (Length2 >= Length1 -> splitPrefix(List2,Length1,ResultList),equalListPrefix(List1,ResultList); %checks the length of lists if List-2 < List-1 then it will not be a prefix.
     write("Not a prefix\n")).

splitPrefix(_,0,[]).   %Base case, ends the recursion of splitting the list.

splitPrefix([Head|RemList],I,[Head|Result]) :- I > 0, I1 is I - 1, splitPrefix(RemList,I1, Result).

equalListPrefix([H1|T1],[H2|T2]):-
    (H1 = H2 -> equalListPrefix(T1,T2);
     write("Not a prefix\n")).

equalListPrefix([],[]):- write("Yes, it is a prefix\n").   %End case, if reaches here then it means the given list was a prefix.

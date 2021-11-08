
%INSERT IN BINARY TREE

createBT(CurrentNode, tree(-,CurrentNode,-)). %base case, only creates node.

insert(List,tree(NewLeft,NewRoot,NewRight)) :-
    length(List,Length),
    insert(List, 0, Length, tree(NewLeft,NewRoot,NewRight)).

insert(List, I, Length, tree(NewLeft,NewRoot,NewRight)) :-
    nth0(I,List,X),
    createBT(X, tree(Left0,Root0,Right0)),
    (NewLeft0,NewRoot0,NewRight0) = (Left0,Root0,Right0),
    W is (2*I + 1),
    (W < Length -> insert(List, W ,Length, ResultLeft),(NewLeft1,NewRoot1,NewRight1) = (ResultLeft,NewRoot0,NewRight0);
     W >= Length -> (NewLeft1,NewRoot1,NewRight1) = (NewLeft0,NewRoot0,NewRight0)),
    Y is (2*I + 2),
    (Y < Length -> insert(List, Y, Length, ResultRight), (NewLeft2,NewRoot2,NewRight2) = (NewLeft1,NewRoot1,ResultRight);
     Y >= Length -> (NewLeft2,NewRoot2,NewRight2) = (NewLeft1,NewRoot1,NewRight1)),
    (NewLeft,NewRoot,NewRight) = (NewLeft2,NewRoot2,NewRight2).



%CONSTRUCT BINARY SEARCH TREE

createBST(CurrentNode, -, tree(-,CurrentNode,-)). %base case, only creates node.

createBST(CurrentNode, tree(Left, Root, Right), tree(NewLeft, NewRoot, NewRight)) :-
    (CurrentNode < Root -> createBST(CurrentNode, Left, Result),
        (NewLeft, NewRoot, NewRight) = (Result, Root, Right),!; %checks if currentNode is less than root, then traverse in left subtree.
    CurrentNode > Root ->  createBST(CurrentNode, Right, Result),
        (NewLeft, NewRoot, NewRight) = (Left, Root, Result),!; %checks if currentNode is greater than root, then traverse in right subtree.
    (NewLeft, NewRoot, NewRight) = (Left, Root, Right)). % if element already exists then no change.


construct(List, ResultTree) :-
    construct(List, _, ResultTree).

construct([CurrentNode|ElementList], CurrentTree, ResultTree) :-
    createBST(CurrentNode, CurrentTree, NewTree),
    construct(ElementList, NewTree, ResultTree).

construct([], Tree, Tree). %base case, terminates when no node is left to enter the tree.


%MIRROR IMAGE OF BINARY TREE

mirrorImage_Tree(-,-). %base case, terminates recursion in a subtree.

mirrorImage_Tree(tree(Left, Root, Right),tree(NewLeft,Root,NewRight)):-
    mirrorImage_Tree(Left,MirrorLeft),
    mirrorImage_Tree(Right,MirrorRight),
    (NewLeft,Root,NewRight) = (MirrorRight,Root,MirrorLeft).

mirror(List,tree(Left,Root,Right)):- %first creates tree and then find the mirror of it.
    insert(List, X), %have to change it to binary tree later.
    mirrorImage_Tree(X,tree(Left0,Root0,Right0)),
    (Left,Root,Right) = (Left0,Root0,Right0).































































# Prolog-Applications
## A. Prefix and Suffix of List
### Description
The application tries to check whether the provided suffix or prefix satisfies the given list or not by returning 'true' or 'false'.
### 1. Prefix
When we look for the provided prefix it first split the list into the same length of the prefix as we have to check only those elements in a list and then it will check whether it is equal or not.
#### <ins>Rules Implemented</ins>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**i. prefix(List1,List2)**<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    This function is provided with the prefix and the list to give out the result.<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**ii. splitPrefix([Head|RemList],I,[Head|Result])**<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    This function is used to split the **first half** of the list in the exact same length as that of the prefix provided and then return it back so that it can be checked for equality<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**iii. equalListPrefix([H1|T1],[H2|T2])**<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    This function checks whether the 2 provided lists are equal or not. If there is any non-similar element then it will return false else if the function is able to traverse through both the lists completely then it can be said that the provided prefix was correct. <br /><br />
<img src="https://user-images.githubusercontent.com/33955028/140700252-acfc5d23-524d-4f1b-bc28-d9bff45122cd.png" width="220" height="250">



### 2. Suffix
### Description
Suffix works the same as a prefix it just takes the second half of the list while splitting rather than the first half as taken in Prefix.

#### <ins>Rules Implemented</ins>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**i. suffix(List1,List2)**<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    This function is provided with the suffix and the list to give out the result.<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**ii. splitSuffix([__|RemList],I,Result)**<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    This function is used to split the **second half** of the list in the exact same length as that of the suffix provided and then return it back so that it can be checked for equality<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**iii. equalListSuffix([H1|T1],[H2|T2])**<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    This function checks whether the 2 provided lists are equal or not. If there is any non-similar element then it will return false else if the function is able to traverse through both the lists completely then it can be said that the provided prefix was correct. <br /><br />

<img src="https://user-images.githubusercontent.com/33955028/140700302-cb85e1d0-cfed-4dcb-aa5f-0092f1412730.png" width="220" height="250">

## B. Creation of Binary Tree_Binary Search Tree and its Mirror
### Description
This application creates a binary tree, a binary search tree, and can also create the mirror image of those trees.<br />
All the trees are in the format of tree(Left, Root, Right).

### 1. Binary Tree
A binary tree is created from the list provided by taking elements from the index similar to that as done in array implementation of Binary Tree.

#### <ins>Rules Implemented</ins>
**i. createBT(CurrentNode, tree(-,CurrentNode,-))**<br />
    This function is used to create a node of the tree.<br /><br />
**ii. insert(List,tree(NewLeft,NewRoot,NewRight))**<br />
    This function takes in the list provided to create the tree and in the result provides the required binary search tree.<br /><br />
**iii. insert(List, I, Length, tree(NewLeft,NewRoot,NewRight))**<br />
    Here we get the index first and take out the element from there and then take that as a current root then take out indexes for its left and right child while simultaneously checking that these indexes stay within the range after this recursion is called that goes to creates left subtree and right subtree for that node. After completing the whole recursion we receive the final tree. <br /><br />
    
![image](https://user-images.githubusercontent.com/33955028/140701490-907e12a4-79bc-4e44-826b-0c1b8fceb997.png)

### 2. Binary Search Tree
A binary tree is created from the list provided by taking elements and checking whether it is less than or greater than the root node.<br />
After checking the condition we move it into its left or right subtree.

#### <ins>Rules Implemented</ins>
**i. createBST(CurrentNode, -, tree(-,CurrentNode,-))**<br />
    This function is used to create a node of the tree.<br /><br />
**ii. createBST(CurrentNode, tree(Left, Root, Right), tree(NewLeft, NewRoot, NewRight))**<br />
    Here we get the current node and teh already existing tree. We take the current node and check whether it is less than or greater the root node and hence place it into the correct position of tree. This returns the newly created tree.<br /><br />
**iii. construct(List, ResultTree)**<br />
    This function is provided with the list and returns the tree. It also calls the initial state of the construct (function shown below) to begin the construction of BST.<br /><br />
**iv. construct([CurrentNode|ElementList], CurrentTree, ResultTree)**<br />
    This function takes in the list provided to create the tree the current tree represents the head of the tree which will be null initially. It creates a node from the first element of the existing list and inserts it into the tree then calls recursion to make a tree from the whole list. <br /><br />

![image](https://user-images.githubusercontent.com/33955028/140702821-b25e33da-4204-402f-89a2-f532bb4c3ada.png)

### 3. Mirror Tree
We are given a list and its shows the mirror of its binary tree or binary search tree.

#### <ins>Rules Implemented</ins>
**i. mirror(List,tree(Left,Root,Right))**<br />
    This function is provided with the list and first creates the basic tree then it creates its mirror tree and returns it back.<br />
    _(If you just change the insert function in here with construct you will be able to get the mirror of the BST as well.)_<br />
    
**ii. mirrorImage_Tree(tree(Left, Root, Right),tree(NewLeft,Root,NewRight))**<br />
    Here we get the tree and then through recursion swap each left and right child of the then tree and then return that mirror tree.<br /><br />

![image](https://user-images.githubusercontent.com/33955028/140703716-5dfd2f8d-04ba-44fc-bc75-f9fc2c4fcabd.png)

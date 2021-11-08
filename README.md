# Prolog-Applications
## A. Prefix and Suffix of List
The application tries to check whether the provided suffix or prefix satifies the given list or not by returning 'true' or 'false'.
### Prefix
When we look for the provided prefix it first split the list into the same length of the prefix as we have to check only those elements in a list and then it will check whether it is equal or not.
#### <ins>Functions Used</ins>
**1. prefix(List1,List2)**
    This function is provided with the prefix and the list to give out the result.<br /><br />
**2. splitPrefix([Head|RemList],I,[Head|Result])**
    This function is used to split the **first half** of the list in the exact same length as that of the prefix provided and then return it back so that it can be checked for equality<br /><br />
**3. equalListPrefix([H1|T1],[H2|T2])**
    This function checks whether it the 2 provided lists are equal or not. If there is any non-similar element then it will return false else if the function is able to traverse through both the lists completely then it can be said that the provided prefix was correct. <br /><br />
    
![image](https://user-images.githubusercontent.com/33955028/140700252-acfc5d23-524d-4f1b-bc28-d9bff45122cd.png)


### Suffix
Suffix works the same as prefix it just takes the second half of the list while splitting rather than the first half as taken in Prefix.

#### <ins>Functions Used</ins>
**1. suffix(List1,List2)**
    This function is provided with the suffix and the list to give out the result.<br /><br />
**2. splitSuffix([__|RemList],I,Result)**
    This function is used to split the **second half** of the list in the exact same length as that of the suffix provided and then return it back so that it can be checked for equality<br /><br />
**3. equalListSuffix([H1|T1],[H2|T2])**
    This function checks whether it the 2 provided lists are equal or not. If there is any non-similar element then it will return false else if the function is able to traverse through both the lists completely then it can be said that the provided prefix was correct. <br /><br />

![image](https://user-images.githubusercontent.com/33955028/140700302-cb85e1d0-cfed-4dcb-aa5f-0092f1412730.png)

## B. Creation of Binary Tree_Binary Search Tree and its Mirror
This application creates a binary tree, a binary search tree and can also create the mirror image of those trees.

### Binary Tree
A binary tree is created from the list provided by taking elements from the index similar to that as done in array implementation of Binary Tree.<br />
All the tress are in the format of tree(Left,Root,Right).

#### <ins>Functions Used</ins>
**1. createBT(CurrentNode, tree(-,CurrentNode,-))**
    This function is used to create a node of the tree.<br /><br />
**2. insert(List,tree(NewLeft,NewRoot,NewRight))**
    This function takes in the list provided to create the tree and in the result provides the required binary search tree.<br /><br />
**3. insert(List, I, Length, tree(NewLeft,NewRoot,NewRight))**
    Here we get the index first and take out the element from there and then make that as a current root then take out indexes for its left and right child while simultaneoudly checking that these indexes stays within the range after this recursion is called that goes to creates left subtree and right subtree for that node. After completing the whole recursion we recieve the final tree. <br /><br />
    
![image](https://user-images.githubusercontent.com/33955028/140701490-907e12a4-79bc-4e44-826b-0c1b8fceb997.png)


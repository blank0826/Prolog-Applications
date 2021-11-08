# Prolog-Applications
## A. Prefix and Suffix of List
The application tries to check whether the provided suffix or prefix satifies the given list or not by returning 'true' or 'false'.
### Prefix
When we look for the provided prefix it first split the list into the same length of the prefix as we have to check only those elements in a list and then it will check whether it is equal or not.
#### Functions Used
1. prefix(List1,List2)
    This function is preovided with the prefix and the list to give out the result.
2. splitPrefix([Head|RemList],I,[Head|Result])
    This function is used to split the first half of the list in the exact same length as that of the prefix provided and then return it back so that it can be checked for equality.
3. equalListPrefix([H1|T1],[H2|T2])
    This function checks whether it the 2 provided lists are equal or not. If there is any non-similar element then it will return false else if the function is able to traverse through both the lists completely then it can be said that the provided prefix was correct. 

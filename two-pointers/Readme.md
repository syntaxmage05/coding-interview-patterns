# TWO POINTERS
Refers to an algorithm that utilizes two pointers. A pointer is a variable that represent an index or position within a data structure, like an array or linked list
So two pointers is using two point to compare something.
Two pointer usually take only O(n) times by eliminating the need for a nested loops.

## Two-pointer Strategies
* Inward traversal - pointers start at opposite ends of the data structure and move inward towards each other. Ideal for problems where we need to compare elements from different ends of a data structure.
* Unidirectional traversal - Both pointers start at the same end of a data structure(usually the beginning) and move in the same direction. Ideal when we want one pointer to find information and another to keep track of information.
* Staged traversal - traverse with one pointer, and when it lands on an element that meets a certain condition, we traverse with the second pointer.

### When to use two pointers?
* Requires a linear data structure, such as an array or linked list or a predictable dynamic such as a sorted array.
* If the problem asks foe a pair of values

#### Real-world Example
Garbage collection algorithms

#### Examples
* Inward Traversal - examples _Pair Sum sorted, Triplet Sum, Largest Container, Is Palindrome Valid_

* Unidirectional Traversal - example _Shift Zeros to the End_

* Staged Traversal - examples _Next Lexicographical Sequence_
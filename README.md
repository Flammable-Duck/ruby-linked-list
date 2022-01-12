# Linked List
An Implementation of a linked list in Ruby.

## Methods
- `#append(value)`
adds a new node containing `value` to the end of the list
- `#prepend(value)`
adds a new node containing value to the start of the list
- `#size`
returns the total number of nodes in the list
- `#head`
returns the first node in the list
- `#tail`
returns the last node in the list
- `#at(index)`
returns the node at the given index
- `#pop`
removes the last element from the list
- `#contains?(value)`
returns true if the passed in value is in the list and otherwise returns false.
- `#find(value)`
returns the index of the node containing value, or nil if not found
- `#to_s`
represent linked lists as strings
- `#insert_at(value, index)`
inserts a new node with the provided value at the given index.
- `#remove_at(index)`
that removes the node at the given index.
- `#each { |item| block }`
Calls the given block once for each value in self

## Included Modules
- Enumerable

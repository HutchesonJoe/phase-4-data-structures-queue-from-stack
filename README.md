# Create a Queue from Two Stacks Lab

## Learning Goals

- Implement a `MyQueue` class using two `Stack`s

## Introduction

Recall in an earlier lesson we talked about the difference between a `Stack` and
a `Queue`. Basically, they are very similar, except that `Stack`s process
records in **"First In, Last Out"** (FILO) order, while `Queue`s process records
in **"First In, First Out"** (FIFO) order. We used as a real-world example of a
`Queue` a line of airline passengers waiting to pass through the security
checkpoint: the passenger who joined the line first will be the first to pass
through security (most of the time, anyway).

![stack-vs-queue](https://curriculum-content.s3.amazonaws.com/phase-4/phase-4-data-structures-queue-from-stack/stack-vs-queue.png)

Because the behavior of a `Queue` is a bit different from that of a `Stack`, the
method names that are used (by convention) are a bit different as well. Rather
than including `#push` and `#pop` methods, a `Queue` implementation generally
has an `#add` method, which adds an element to the end of the `Queue`, and a
`#remove` method, which removes the first element in the `Queue`. (You might
also see these methods called `#enqueue` and `#dequeue`.) Finally, like a
`Stack`, a `Queue` usually includes a `#peek` method, but, in this case, `#peek`
returns the element that went into the `Queue` **first** rather than the one
that went in most recently.

In this lab, you will implement a `MyQueue` class, but you will be doing it a
bit differently than you did for the `Stack` class. Specifically, you will use
`Stack` as the underlying data structure rather than an array. We have included
the code in `lib/stack.rb`. We have also required that file in
`lib/queue_from_stack.rb`, where you will be coding your solution.

## Instructions

Start by creating the `MyQueue` class, and set it up to initialize **_two_**
new, empty instances of the `Stack` class; in order for the tests to pass, you
will need to name these `@s1` and `@s2`. You should **not** initialize an empty
array for your `MyQueue` instance.

Once you have the first test passing, build out the following methods:

- `MyQueue#add(value)`: adds an element to the end of the `Queue`
- `MyQueue#remove`: removes and returns the first element in the `Queue`
- `MyQueue#peek`: returns the first element in the `Queue` without removing it

Note: in solving this challenge, you can only use the four methods included in
the `Stack` implementation — `#push`, `#pop`, `#peek`, and `#empty?` — and the
**two** instances of `Stack` that are created when the `MyQueue` instance is
initialized.

**Hint:** If you're having a little trouble figuring out how to approach this
problem, give some thought to what will happen if you `pop` each element off of
one `Stack` instance and `push` it onto another. You should be able to use this
information to set up your `add` method such that the order of the elements is
correct for using `#push` and `#pop`.

## Conclusion

As you can probably imagine, implementing a `Queue` using a `Stack` as the
underlying data structure is not the the most efficient way to go. Hopefully,
however, building out this class gave you a good feel for the difference in how
these two data structures process records.

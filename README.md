# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names: Trevor Bergeson and Alan Fong

## Summary
In this lab, we learned about implementing a half adder in Verilog. We also learned how to implement one's complement addition and two's complement addition using full adders. 
Most of our learning in this had to do with wiring everything up using correct syntax.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The half adder produces a sum and a carry, while the half subtractor produces a difference and a borrow.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
Because the end around carry often requires an additional addition step, it takes extra hardware and more time. Additionally, the existence of both positive and negative zero
causes many complications.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case with Two's Complement is the most negative number. In an 8-bit number, this would be -128 (or 10000000). The problem here is that the largest positive number is
always 1 less: in this case, 127. If you tried to negate -128, it would overflow back to -128. (01111111 + 1 = 10000000).

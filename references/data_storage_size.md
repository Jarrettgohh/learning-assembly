## C/C++ data type mapped to assembly storage types

1. char -> byte (8 bits) (declaration: db)
2. short -> word (16 bits) (declaration: dw)
3. int -> double-word (32 bits) (declaration: dd)
4. unsigned int -> double-word (32 bits) (declaration: dd)
5. long -> quadword (64 bits) (declaration: dq)
6. long long -> quadword (64 bits) (declaration: dq)
7. char \_ -> quadword (64 bits) (declaration: dq)
8. int \_ -> quadword (64 bits) (declaration: dq)
9. float -> double-word (32 bits) (declaration: dd)
10. double -> quadword (64 bits) (declaration: dq)

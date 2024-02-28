## C/C++ data type mapped to assembly storage types

> char -> byte (8 bits) (declaration: db)
> short -> word (16 bits) (declaration: dw)
> int -> double-word (32 bits) (declaration: dd)
> unsigned int -> double-word (32 bits) (declaration: dd)
> long -> quadword (64 bits) (declaration: dq)
> long long -> quadword (64 bits) (declaration: dq)
> char _ -> quadword (64 bits) (declaration: dq)
> int _ -> quadword (64 bits) (declaration: dq)
> float -> double-word (32 bits) (declaration: dd)
> double -> quadword (64 bits) (declaration: dq)

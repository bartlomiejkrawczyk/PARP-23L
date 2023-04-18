Zapisz w Prologu:
1. Butch jest zabójcą
```prolog
murderer(butch).
```
2. Mia i Marcellus są małżeństwem
```prolog
two_way_married(mia, marcellus).

married(X, Y) :- two_way_married(Y, X).
married(X, Y) :- two_way_married(X, Y).

```
3. Mia kocha każdego, kto jest dobrym tancerzem
```prolog
good_dancer(someone).

loves(mia, X) :- good_dancer(X).
```
4. Jules je wszystko, co jest pożywne lub smaczne
```prolog
nutritious(food).
tastefull(food).

eats(jules, X) :- nutritious(X).
eats(jules, X) :- tastefull(X).
```

Które pary termów dają się zunifikować?
1. bread = bread
    - true.
2. Bread = bread
    - Bread = bread.
3. food(bread) = bread
    - false.
4. food(bread) = X
    - X = food(bread).
5. food(bread, X) = food(Y, sausage)
    - X = sausage,
    - Y = bread.
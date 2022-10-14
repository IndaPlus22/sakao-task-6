1. Varför kan man skriva utryck så som detta i Haskell?
#+BEGIN_SRC haskell
let evenNumbers = [ 2 * n | n <- [1..]]
print (take 1000000 evenNumbers)
#+END_SRC

För haskell är lat och räknar bara ut det de behöver när det kallas.

2. Vad innebär rekursion?

funktionen kallar funktionen kör runt sig själv.

3. Varför fungerar följande funktion i språk så som haskell och inte i t.ex javascript
#+BEGIN_SRC haskell
sum :: Integral n, Num n => n -> n -> n
sum s 0 = s
sum s n = sum (s + n) (pred n)
#+END_SRC

#+BEGIN_SRC javascript
function sum(s, n) {
     if(n == 0){
         return s;
     } else{
         return sum(s + n, n - 1);
     }
}
#+END_SRC

sum är inte definerat i javascript fast i haskell så räknar de det när det behövs så funkar? i think
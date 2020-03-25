//Т5.1. Написать функцию, возвращающую последовательность n случайных веще-
//ственных чисел на интервале [a;b], округленных до m>=0 знаков после запятой.
//Т5.2. Определить, сколько раз в последовательности n целых чисел встречается
//значение m, введенное с клавиатуры.


procedure addToArray(var arr: array of real; e: real);
begin
  setLength(arr, length(arr) + 1);
  arr[length(arr) - 1] := e;
end;

function округление(n, m: integer; a, b: real): array of real;
begin
  var arr: array of real;
  loop n do
    addToArray(arr, round(random(a, b) * power(10, m)) / power(10, m));
  result := arr;
end;

function count(n:real; a:array of real):integer;
begin
var k:=0;
for var i:=1 to length(a) do
if a[i-1]=n then
inc(k);
result:=k;
end;

begin
  var n:=1000;
  var m:=4;
  var a:=6;
  var b:=7.5;
  var f:=округление(n,m,a,b);
  var c:= count(ReadReal('Введите ваше число:'), f);
  println('Количество повторных элементов:', c);
  
end.
=begin
`map`
(alias method => `collect`)
非破壊的メソッドであるため、元のコレクションを変更せずに新しいコレクションを返す
=end
numbers_for_map = (1..5).to_a
new_numbers_for_map = numbers_for_map.map {|n| n * 10}
puts new_numbers_for_map # => [10, 20, 30, 40, 50]

=begin
`select`
(alias method => `find_all`)
各ブロックを評価し、真の要素のみを返す
非破壊的メソッドで、新しいコレクションを返す
=end
numbers_for_select = (1..5).to_a
new_numbers_for_select = numbers_for_select.select { |n| n.even? }
puts new_numbers_for_select # => [2, 4]

=begin
`reject`
各ブロックを評価し、真の要素を取り除く
=end
numbers_for_reject = (1..5).to_a
new_numbers_for_reject = numbers_for_reject.reject { |n| n % 3 == 0 }
puts new_numbers_for_reject # => [1, 2, 4, 5]

=begin
`find`
(alias method => `detect`)
ブロックの戻り値が最初に真になった要素を返す
一致するブロックが存在しない場合、`nil`を返却する
=end
numbers_for_find = (1..5).to_a
first_number_of_multiple_3 = numbers_for_find.find { |n| n % 3 == 0 }
puts first_number_of_multiple_3 # => 3

=begin
`inject`
(alias method => `reduce`)
配列に対して、畳み込み演算を行う
=end
numbers_for_inject = (1..5).to_a
sum = numbers_for_inject.inject {|result, n| result *= n}
puts sum # => 120

=begin
コレクションメソッドにおけるシンボルについて(`&`)
[`to_proc`について](https://docs.ruby-lang.org/ja/latest/method/Symbol/i/to_proc.html)
Kotlinのitと思ってOK
明示的にわざわざ変数宣言しなくても、&でかける
ただし、書き方に注意
```ruby
numbers = [1, 2, 3]
numbers.select(&:odd?)
```
=end
numbers_for_to_proc = [1, 2, 3]
new_numbers_for_to_proc = numbers_for_to_proc.select(&:odd?)
puts new_numbers_for_to_proc # => [1, 3]
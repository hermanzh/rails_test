# 算法 河内之塔 实现

Aa = [1, 2, 3, 4]
Ba = []
Ca = []


def hanoi(n, a, b, c)
  if n == 1
    puts "Move sheet #{n} from #{a} to #{c}"
    move_out(a, n)
    move_in(c, n)
    p Aa, Ba, Ca
  else
    hanoi(n - 1, a, c, b)
    puts "Move sheet #{n} from #{a} to #{c}"
    move_out(a, n)
    move_in(c, n)
    p Aa, Ba, Ca

    hanoi(n-1, b, a, c)
  end
end

def move_in(arr_name, n)
  if arr_name == 'A'
    Aa << n
  elsif arr_name == 'B'
    Ba << n
  elsif arr_name == 'C'
    Ca << n
  end
end

def move_out(arr_name, n)
  if arr_name == 'A'
    Aa.delete n
  elsif arr_name == 'B'
    Ba.delete n
  elsif arr_name == 'C'
    Ca.delete n
  end
end

puts '请输入盘数：'
n = gets()

hanoi(n.strip.to_i, 'A', 'B', 'C')


# ファイルを元どおりの順番に並び替えるプログラム
# 移動回数の合計を求める
# n個のファイルがあり、k回移動する場合、移動する中でもっとも右に来るファイルを配置する場所はn - k通り
# それ以外はk - 1この並び替えでnP(k -1)通り

N = 15

# 順列を計算
def nPr(n, r)
  result = 1
  r.times do |i|
    result *= n -1
  end
  result
end

cnt = 0
1.upto(N - 1)do |i| # 移動回数
  cnt += * (N - i) * nPr(N, i -1)
end
puts cnt


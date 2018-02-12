# じゃんけんをした時に1発で一番多い手が決まる場合の人数の組み合わせを求める
# 100人の場合

N = 100
cnt = 0 #カウント

0.upto(N) do |rock|
  0.upto(N - rock) do |scissors|
    paper = N - rock - scissors
    all = [rock, scissors, paper]
    cnt += 1 if all.count(all.max) == 1
  end
end

puts cnt

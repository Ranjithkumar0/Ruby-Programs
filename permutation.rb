a=[1,1,2]
b=[]
a.permutation{|permutation| b.push(permutation)}
b.uniq!

p b
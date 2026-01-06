
   
A=[[.9 .2]
   [.1 .8]]
day(n) = A^(n-1)*[0,1] # proportion of mosquitos in bog 1 on day n.

day(6)

day(1000)

A*[2/3,1/3] 

f(x) = sum([(i-20)^2 for i in x])
x=[24,16,21,22,17]
using Distributions

for j in 1:1000
    x=rand(Multinomial(100,[.2,.2,.2,.2,.2]))
    if isinteger(f(x)/20)
        break
    end
end
x
sum(x)
f(x)
sum(x)

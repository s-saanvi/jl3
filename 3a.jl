using Printf
function calcInterest()
print("Principal? ")
P = parse(Int64, readline())
print("Interest Rate? ")
r = parse(Float64, readline())
println("Year Amount")
amt = P
for y = 1 : 10
amt += amt*r/100
@printf("%3d %8.2f\n", y, amt)
if amt > 2P break end
end
end
calcInterest()
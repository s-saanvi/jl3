function readWriteFileAverage()
    inn = open("3bin.txt", "r")
    out = open("3bout.txt", "w")
    n=0
    sum = 0
    while (snum = readline(inn)) != ""
        n += 1
        sum += parse(Int64, snum)
    end
    close(inn)
    if n == 0
        println(out, "No numbers supplied")
    else
        println(out, "number(s) supplied is $n")
        println(out, "Sum is $sum")
        println(out, "Average is $(round(sum/n,digits=1))")
    end
    close(out)
end
readWriteFileAverage()

function findLargest()
    bigNum = typemin(Int64)
    for snum in eachline("3bin.txt")
        num=parse(Int64,snum)
        if num>bigNum
            bigNum = num
        end
        end
        println("Largest is $bigNum")
end
findLargest()
function findSmallest()
    smallNum = typemax(Int64)
    for snum in eachline("3bin.txt")
        num =parse(Int64, snum)
        if num <smallNum
            smallNum = num
        end
    end
    println("Smallest is $smallNum")
end
findSmallest()
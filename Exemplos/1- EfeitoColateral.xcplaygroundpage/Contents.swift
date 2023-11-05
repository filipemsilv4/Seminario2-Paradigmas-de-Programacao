
var a = 10

func fun() -> Int {
    a = 20
    return 10
}

print(a + fun()) // 20
print(fun() + a) // 30

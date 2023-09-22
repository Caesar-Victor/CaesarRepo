def func4(a1, a2=0, a3=14):
    v1 = a3 - a2
    v2 = ((v1 < 0) + v1 >> 1) + a2
    v3 = v2
    if (v3 > a1) :
        return 2 * func4(a1, a2, (v2 - 1)) & 0xfffffffe
    result = 0
    if (v3 < a1) :
        result = 2 * func4(a1, (v2 + 1), a3) & 0xfffffffe | 1
    return result

def elder_age(m, n, l, t):
    # arithmic series sum
    def s(a1, a2):
        return 0 if a1 > a2 else (a1 + a2) * (a2 - a1 + 1) // 2
    # edge till 2^k
    def edge(x):
        ret = 1
        while ret < x: ret *= 2
       # print(ret)
        return ret

    m, n  = min(m , n), max(m, n)
    em, en = edge(m), edge(n)
    if m == 0 or l >= en - 1: return 0
    if em == en:
        return (s(0, em - l - 1) * (m + n - em) + elder_age(em - m, en - n, l, t)) % t
    else:
        em = en // 2
        goal_s1 = s(0, en - l - 1) * m 
        s1_small = (en - n) * s(max (em - l, 0), en - l - 1)
        if l <= em: # no +0s,        true FANS  /O-O\
            small = elder_age(em - m, en - n, 0, t) + (em - l) * (em - m) * (en - n) 
        else:       # with some +0s, fake FANS  
            small = elder_age(em - m, en - n, l - em, t)
        return (goal_s1 - s1_small + small) % t
    
print(elder_age(115,510,291,255))

#m = 5, n = 5, l = 1, t = 25

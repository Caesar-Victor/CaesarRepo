% André Kesselring 12551460, Vinicios de Andrade 12554290, Victor Nascimento 10773530

A = [3 7 -4 12; -5 9 10 2; 6 13 8 11; 15 5 4 1]

A1 = sort(A)

A2 = sort(A.')

b1 = sum(A)

b2 = sum(A.')

ex_2_5 = max(A2(:,2).*A(:,1))

ex_2_6 = A(:,1)./sum(A1(1:1:3,3))

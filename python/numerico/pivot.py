import numpy as np
a = np.array([[4.,3.,2.,1.],[5.,4.,3.,2.],[6.,4.,3.,2.],[7.,4.,3.,2.]])
sigfig = 3
n,m = a.shape
for i in range(n):
      if a[i,i] == 0.0:
            print('Determinante nula')
            #return x
      else:
            amax = a[i,i]
            ind = i
            for j in range (i+1, n):
                  if abs(a[j][i]) > abs(amax):
                        amax = a[j][i]
                        ind = j
            if ind != i:
                  l = np.copy(a[i])
                  a[i] = a[ind]
                  a[ind] = l
            for j in range (i+1, n):
                  ratio = round(a[j,i]/a[i,i], sigfig)
                  for k in range(n):
                        a[j,k] = round(a[j,k] - round(ratio * a[i,k], sigfig), sigfig)
print(a)
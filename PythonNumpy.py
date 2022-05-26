import numpy as np
from datetime import datetime
import time


f = open('indreznumpy_py.txt', 'w')
for i in range(1, 51):
    start_time = datetime.now()
    a = np.genfromtxt('ind' + str(i) + '.txt', delimiter=' ')

    res = np.unique(a)
    np.savetxt('numpyrez' + str(i) + '_py.txt', res, fmt = '%11.6f')

    f.write(str(i)+ '. ' + str(datetime.now() - start_time)[6::] + '\n')

f.close()

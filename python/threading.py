import threading
import time
import concurrent.futures

def do_something(seconds):
    print('Sleeping {} second...'.format(seconds))
    time.sleep(seconds)
    return "Done Sleeping!"

#with concurrent.futures.ThreadPoolExecutor() as executor:
#    results = [executor.submit(do_something, 1) for _ in range(10)]
#    for f in concurrent.futures.as_completed(results):
#        print(f.result())

with concurrent.futures.ThreadPoolExecutor() as executor:
    secs = [5,4,3,2,1]
    results = [executor.submit(do_something, sec) for sec in secs]

    for f in concurrent.futures.as_completed(results):
        print(f.result())

""" t1 = threading.Thread(target=do_something)
t2 = threading.Thread(target=do_something)

threads = []

for _ in range(10):
    t = threading.Thread(target=do_something)
    t.start()
    threads.append(t)

for thread in threads:
    thread.join()
 """


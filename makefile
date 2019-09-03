
ALL: main.so

main.so: main.o
	gcc $< -shared -o$@

main.o: main.c
	gcc -Wall -c -fPIC -o$@ $<

clean:
	rm -f *.o *.so *~

test: main.so
	pytest -vv --durations=0 test_main.py

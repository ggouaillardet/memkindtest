JDK_HOME=/usr/java/jdk-10

test: libmemkindtest.so
	java -Djava.library.path=. MemkindTest

libmemkindtest.so: MemkindTest.h memkindtest.c
	gcc -I$(JDK_HOME)/include -I$(JDK_HOME)/include/linux -shared -fPIC -o libmemkindtest.so memkindtest.c

MemkindTest.h: MemkindTest.java
	javac -h . -d . MemkindTest.java

clean:
	rm -f MemkindTest.class MemkindTest.h libmemkindtest.so

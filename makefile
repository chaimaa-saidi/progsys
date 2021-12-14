obj = complexe.o usecomplexe.o
c = gcc
flags = -Wall


usecomplexe : $(obj)
	$(c) $(flags) $(obj) -o usecomplexe -lm
usecomplexe.o : usecomplexe.c complexe.h
	$(c) $(flags) -c usecomplexe.c -lm
complexe.o : complexe.c complexe.h
	 $(c) $(flags) -c complexe.c -lm
#commentaire

all : $(APPLI) clean
$(APPLI) : $(APPLI).o complexe.o 
	gcc -Wall $(APPLI).o complexe.o -o $(APPLI)
$(APPLI).o : $(APPLI).c complexe.h
	gcc -Wall -c $(APPLI).c
complexe.o : complexe.c complexe.h 
	gcc -Wall -c complexe.c
#suppression des fichiers objet
clean : $(APPLI)
	rm -f *.o

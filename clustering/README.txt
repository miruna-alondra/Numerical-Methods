@Copyright 2019 Cocor Miruna-Alondra
Timp de lucru : 20 de ore
In cadrul acestei teme am avut de implementat algoritmul K-Means, 
algoritm ce cuprinde un mod de sortare a unui numar de obicete(in cazul nostru puncte)
intr-un anumit numar de grupuri, pe baza unor criterii(distanta de la un 
punct ales drept centroid la  celelalte puncte din multime), obiectele care se afla in acelasi 
grup avand caracteristici comune (distanta de la centroid la punct este minima).
Task 1:
Am avut de citit datele din 2 fisiere date ca parametri ai functiei si am folosit una dintre
sugestiile oferite, functia load care realizeaza acest lucru.
Task 2:
Acest task a reprezentat dificultatea acestei teme, fiind implementarea propriu-zisa a algoritmului.
Am realizat acest task utilizand functia randi pentru alegerea random a centroizilor, punandu-i
intr-un vector, cu NC elemente(NC fiind numarul de clustere). Pe langa acest vector, am mai initializat
o matrice, prev, reprezentand matricea in care voi memora centroizii din iteratia anterioara. Urmatorul pas a fost
sa verific daca numarul de clustere este mai mare decat 1 si sa tratez cazul particular in care NC = 1.
Dupa tratarea acestui caz, am calculat fiecare distanta de la fiecare punct la centroizi, folosind
functia norm, iar rezultatele le-am introdus intr-o matrice cu NC linii si npoints coloane
(npoints fiind numarul de puncte). Am calculat distantele minime pentru fiecare coloana si
am folosit aceste distante pentru a vedea carui cluster apartine fiecare punct. Am recalculat 
coordonatele centroizilor ca fiind centrele de greutate ale fiecarui cluster. Am realizat acest 
algoritm pana cand matricea prev este egala cu matricea centroids.
Task 3:
Am avut de realizat un grafic in care sa fie reprezentate 3 clustere, fiecare colorat intr-un
mod diferit. Am folosit functia scatter3.
Task 4:
Am avut de calculat costul tuturor clusterelor, costul fiind definit ca suma distantelor de la centroid
la fiecare punct din cluster. Pnetru acest lucru, am folosit acelasi algoritm de la task-ul 2 pentru determinarea
distantelor minime, iar costul reprezinta suma acestor distante. 
Task 5:
Am avut de realizat un grafic care reprezinta analiza costului total al clusterelor in functie de numarul de clustere.
Pentru acesta am utilizat rezultatele de la task-urile 2 si 4 si functia plot.

% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
  prev=[0,0,0]; %matricea ce va memora matricea centroizilor de la iteratia precedenta
  npoints = size(points, 1);
  point = points(randi(npoints), :);
  centroids = [point];
  M = zeros(NC, npoints); %matricea de distante de la fiecare punct la centroizi
  if NC>1
for i= 2 : NC
    point = points(randi(npoints), :);
    centroids = [centroids; point];
    prev=[prev;0,0,0];
endfor
endif
do
  %calculez distantele de la fiecare punct
  %la fiecare centroid
  if NC >1
  for i = 1: NC
    for j = 1 : npoints
      M(i, j) = norm(points(j, :)-centroids(i, :));
    endfor
 endfor
endif
%tratez cazul particular in care NC = 1;
if NC == 1
  for j = 1 : npoints
      M(1, j) = norm(points(j, :)-centroids(1, :));
    endfor
    endif
  if NC == 1
    D = M(1,:);
  endif
  if NC >1
 D = min(M);
 endif
   x = centroids(1, 1);
   y = centroids (1, 2);
   z = centroids(1, 3);
   nelements = 1;
   index = 1;
   %verific carui cluster apartine fiecare punct
 for j = 1 : columns(D);
   if (D(j) == M(1, j))
     x = x + points(index, 1);
     y = y + points(index, 2);
     z = z + points(index, 3);
     nelements++;
    endif
    index++;
 endfor
 x1 = x / nelements;
 y1 = y / nelements;
 z1 = z / nelements;
  aux = [x1,y1,z1];
  if NC > 1
 for i = 2: NC
   index = 1;
   nelements = 1;
   x = centroids(i, 1);
   y = centroids(i, 2);
   z = centroids(i,3);
   for j = 1: columns(D)
     if(D(j) == M(i, j))
     x = x + points(index, 1);
     y = y + points(index, 2);
     z = z + points(index, 3);
     nelements++;
    endif
    index++;
  endfor
  %calculez matricea noua de centroizi
  x1 = x / nelements;
  y1 = y / nelements;
  z1 = z / nelements;
  aux = [ aux; x1, y1, z1];
endfor
endif
prev = centroids;
centroids = aux;
until (centroids == prev)
endfunction

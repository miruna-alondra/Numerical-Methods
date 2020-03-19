% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	% TODO graphical representation coded here
  NC = 3;
  distanta1 = 0;
  distanta2 = 0;
  distanta3 = 0;
  %am initializat 3 matrice in care voi introduce punctele din cele 3 clustere
  v1 = 0;
  v2 = 0; 
  v3 = 0;
  distanta1 = norm(points(1, :) - centroids(1, :));
  distanta2 = norm(points(1, :) - centroids(2, :));
  distanta3 = norm(points(1, :) - centroids(3, :));
  if ( distanta1 < distanta2 && distanta1 < distanta3) 
      v1 = [points(1,1), points(1, 2), points(1, 3)];
    endif
    if (distanta2 < distanta1 && distanta2 < distanta3)
     v2 = [points(1,1), points(1, 2), points(1, 3)];
    endif
    if (distanta3 < distanta1 && distanta3 < distanta2)
      v3 = [points(1,1), points(1, 2), points(1, 3)];
     endif
  for i = 2 : size(points, 1)
    distanta1 = norm(points(i, :) - centroids(1, :));
    distanta2 = norm(points(i, :) - centroids(2, :));
    distanta3 = norm(points(i, :) - centroids(3, :));
    if ( distanta1 < distanta2 && distanta1 < distanta3) 
      if (v1 == 0)
      v1 = [points(i, 1), points(i, 2), points(i, 3)];
    else 
      v1 = [ v1; points(i, 1), points(i, 2), points(i, 3)];
      endif
    endif
    if (distanta2 < distanta1 && distanta2 < distanta3)
      if (v2 == 0)
        v2 = [points(i, 1), points(i, 2), points(i, 3)];
    else 
      v2 = [ v2; points(i, 1), points(i, 2), points(i, 3)];
      endif
    endif
    if (distanta3 < distanta1 && distanta3 < distanta2)
      if (v3 == 0)
        v3 = [points(i, 1), points(i, 2), points(i, 3)];
    else
      v3 = [ v3; points(i, 1), points(i, 2), points(i, 3)];
      endif
    endif
endfor
 scatter3(v1(:, 1), v1(:, 2), v1(:, 3), 'y', 'filled');
 hold on
 scatter3(v2(:, 1), v2(:, 2), v2(:, 3), 'r', 'filled');
 hold off
 hold on
 scatter3(v3(:, 1), v3(:, 2), v3(:, 3), 'g', 'filled');
     hold off
     legend('v1', 'v2', 'v3');
endfunction


% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0;
  npoints = size(points, 1);
  NC = rows(centroids);
  M = zeros(NC, npoints);
  if NC>1
endif
%calculez distantele minime
  if NC >1
  for i = 1: NC
    for j = 1 : npoints
      M(i, j) = norm(points(j, :)-centroids(i, :));
    endfor
 endfor
endif
%tratez cazul particular
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
if NC == 1
  for i = 1 : npoints
    cost = cost + M(1, i);
  endfor
endif
%calculez costul total adunand distantele minime
  if NC > 1
    for i = 1 : columns(D)
      cost = cost + D(i);
    endfor
  endif
endfunction


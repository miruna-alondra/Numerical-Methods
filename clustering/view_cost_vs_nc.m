function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
  vector = zeros(1, 10);
  load(file_points);
  %centroids = clustering_pc(points);
  for i = 1 : 10
   centroids = clustering_pc(points, i);
   cost  = compute_cost_pc(points, centroids);
   vector(i) = cost;
 endfor
 plot(vector);
endfunction


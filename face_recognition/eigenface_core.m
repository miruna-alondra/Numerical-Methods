function [m A eigenfaces pr_img] = eigenface_core(database_path)
  T = [];
  V = [];
  for i = 1 : 10
    image_path = strcat(database_path,'/',int2str(i),'.jpg');
    image_matrix  = double(rgb2gray(imread(image_path)));
    image_vector = [];
    for k = 1 : rows(image_matrix)
      image_vector = [image_vector; image_matrix(k, :)'];
      endfor
     T = [T image_vector];
  endfor
  m = zeros(rows(T), 1);
    for j = 1 : rows(T)
      m(j) = sum(T(j, :)) / columns(T);
    endfor
    A = zeros(columns(T), rows(T));
    A = T - m;
    M = A' * A;
    [Vp LAMBDA] = eig(M);
    lambda = zeros(columns(M), 1);
    lambda = diag(LAMBDA);
    for i = 1 : columns(M)
      if(lambda(i) > 1)
            V = [V Vp(:, i)];
          endif
        endfor
    eigenfaces = A * V;
    pr_img = eigenfaces' * A;
        
 endfunction
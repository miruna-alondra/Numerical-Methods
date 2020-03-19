function [A_k S] = task4(image, k)
   %TODO
      A = double(imread(image));
  m = rows(A);
  n = columns(A);
  miu = zeros(m, 1);
  for i = 1 : m
   for j = 1 : n
     miu(i) = A(i, j) + miu(i);
   endfor
   miu(i) = miu(i) / n;
endfor
  for i = 1 : m
   A(i, :) = A(i, :) - miu(i);
  endfor
 Z = 1 / (n - 1) * A * A';
 [V S] = eig(Z);
  W = V(1:rows(V), 1:k);
  Y = W' * A;
  A_k = W * Y + miu;
endfunction
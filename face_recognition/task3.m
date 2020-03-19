function [A_k S] = task3(image, k)
  %TODO
  A = double(imread(image));
  m = rows(A);
  n = columns(A);
  miu = zeros(m, 1);
  %for i = 1 : m
   %for j = 1 : n
    % miu(i) = A(i, j) + miu(i);
   %endfor
   %miu(i) = miu(i) / n;
 %endfor
 miu = mean(A')';
 for i = 1 : m
   A(i, :) = A(i, :) - miu(i);
   endfor
  Z = (A') / sqrt(n - 1);
  [U S V ] = svd(Z);
  W = V(1:rows(V), 1 : k);
  Y = W' * A;
  A_k = W * Y + miu;
endfunction
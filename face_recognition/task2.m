function task2()
    figure(1)
   A = double(imread('image3.gif'));
   [U S V] = svd(A);
   m = rows(A);
   n = columns(A);
   s = zeros(min(m, n), 1);
   for i = 1 : min(m, n)
         s(i) = S(i, i);
   endfor
   plot(s);
   
   figure(2)
   k = [1:19 20:20:99 100:30:min(m, n)];
   A = double(imread('image3.gif'));
   [U S V] = svd(A);
   m = rows(A);
   n = columns(A);
   s_total = 0;
   raport = zeros(1, min(m, n));
   for i = 1 : min(m, n)
      s_total = s_total + S(i, i);
   endfor
    for k = 1 : min(m, n)
      s_k = 0;
      for j = 1 : k
        s_k += S(j, j);
      endfor
      raport(1, k) = s_k / s_total;
    endfor
   plot(raport);
   
  figure(3)
   A = double(imread('image3.gif'));
   [U S V] = svd(A);
   m = rows(A);
   n = columns(A);
   eroare = [];
   for k = [1:19 20:20:99 100:30:min(m, n)]
    A_k = U(:, 1:k) * S(1:k, 1:k) * V'(1:k, :);
      suma = sum(sum((A-A_k).^2));
      eroare = [eroare suma*(1/(m*n))];
    endfor
      plot([1:19 20:20:99 100:30:min(m, n)], eroare); 
      
   figure(4)
  A = double(imread('image3.gif'));
   [U S V] = svd(A);
   m = rows(A);
   n = columns(A);
   rata_comp = [];
   suma = 0;
   for k = [1:19 20:20:99 100:30:min(m, n)]
     suma = (m * k + n * k + k);
     rata_comp = [rata_comp, suma * (1 / (m * n)) ];
   endfor
 plot([1:19 20:20:99 100:30:min(m, n)], rata_comp);
   endfunction
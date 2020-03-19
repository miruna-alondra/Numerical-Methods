function task5()
  %TODO
  figure(1)
   A = double(imread('image3.gif'));
   m = rows(A);
   n = columns(A);
   k = 200:30:min(m, n);
     [A_k S] = task3('image3.gif', k);
     plot(diag(S));
     
     figure(2)
     
      A = double(imread('image3.gif'));
      m = rows(A);
      n = columns(A);
      [A_k S] = task3('image3.gif', k);
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
   m = rows(A);
   n = columns(A);
  % [A_k S] = task3('image3.gif', k);
   eroare = [];
   for k = [1:19 20:20:99 100:30:min(m, n)]
     [A_k S] = task3('image3.gif', k);
      suma = sum(sum((A-A_k).^2));
      eroare = [eroare suma*(1/(m*n))];
      display(k);
    endfor
      plot([1:19 20:20:99 100:30:min(m, n)], eroare);
     
   figure(4)
   
      A = double(imread('image3.gif'));
      m = rows(A);
      n = columns(A);
      rata_comp = [];
      suma = 0;
      for k = [1:19 20:20:99 100:30:min(m, n)]
          suma = (m*k + n*k + k);
          rata_comp = [rata_comp, suma * (1 / (m*n)) ];
      endfor
 plot([1:19 20:20:99 100:30:min(m, n)], rata_comp);
endfunction
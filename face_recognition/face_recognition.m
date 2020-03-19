function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
  distante = zeros(1, columns(pr_img));
    image_matrix  = double(rgb2gray(imread(image_path)));
    image_vector = [];
    for k = 1 : rows(image_matrix)
      image_vector = [image_vector; image_matrix(k, :)'];
      endfor
    PrTestImg = eigenfaces' * (image_vector - m);
    for i = 1 : columns(pr_img)
      distante(i) = norm(pr_img(:, i) - PrTestImg , 2);
    endfor
    min_dist = min(distante);
    for i = 1 : length(distante)
      if (min_dist == distante(i) )
        output_img_index = i;
      endif
    endfor
endfunction
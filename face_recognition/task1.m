function A_k = task1(image, k)
  image_matrix = double(imread(image));
  [U S V] = svd(image_matrix);
  A_k = U(:, 1:k) * S(1:k, 1:k) * V'(1:k, :);
end
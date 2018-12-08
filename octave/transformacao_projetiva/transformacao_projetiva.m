function transformacao_projetiva(img_name, mat)
  imagem_original = im2uint8(imread(img_name));
  height = 300;
  width = 600;
  imagem_transformada = zeros(300, 600, 3);
       
  for i=1:1:height
    for j=1:1:width
    end
  end
  
  subplot(1,2,1);
  imshow(imagem_original);
  title('Imagem Original');
  subplot(1,2,2);
  imshow(imagem_transformada);
  title('Imagem Transformada');
  

  
endfunction
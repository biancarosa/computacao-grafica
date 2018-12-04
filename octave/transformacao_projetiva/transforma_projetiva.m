function transforma_projetiva(img, matriz)

imagem = imread(img);

imagemInt= im2uint8(imagem);	
imagemInt8 = imagemInt(:,:,1);

mat = matriz;


L =  [mat(1,3);
      mat(1,4);
      mat(2,3);
      mat(2,4);
      mat(3,3);
      mat(3,4);
      mat(4,3);
      mat(4,4)];
     
L;
      
M = [mat(1,1) mat(1,2) 1 0 0 0 -(mat(1,1) * mat(1,3)) -(mat(1,2) * mat(1,3));
     0 0 0 mat(1,1) mat(1,2) 1 -(mat(1,1) * mat(1,4)) -(mat(1,2) * mat(1,4));
     mat(2,1) mat(2,2) 1 0 0 0 -(mat(2,1) * mat(2,3)) -(mat(2,2) * mat(2,3));
     0 0 0 mat(2,1) mat(2,2) 1 -(mat(2,1) * mat(2,4)) -(mat(2,2) * mat(1,4));
     mat(3,1) mat(3,2) 1 0 0 0 -(mat(3,1) * mat(3,3)) -(mat(3,2) * mat(3,3));
     0 0 0 mat(3,1) mat(3,2) 1 -(mat(3,1) * mat(3,4)) -(mat(3,2) * mat(3,4));
     mat(4,1) mat(4,2) 1 0 0 0 -(mat(4,1) * mat(4,3)) -(mat(4,2) * mat(4,3));
     0 0 0 mat(4,1) mat(4,2) 1 -(mat(4,1) * mat(4,4)) -(mat(4,2) * mat(4,4))];


MT = M';


X = (inv(MT*M))*MT*L;

T = [X(1,1) X(2,1) X(3,1);
     X(4,1) X(5,1) X(6,1); 
     X(7,1) X(8,1)  1];  


[lin col]=size(imagemInt8);



for i=1:1:lin
  for j=1:1:col
		xt=i;
		yt=j;
		XYW=[i j 1]*inv(T);
		x=ceil(XYW(1));
		y=ceil(XYW(2));
		if(x>=0 && x<=lin && y>=0 && y<=col)
			imT(xt,yt)= imagemInt8(x,y);
		end
	end
end


subplot(1,2,1);
imshow(imagemInt8);
title('Imagem Original');
subplot(1,2,2);
imshow(imT);
title('Imagem Transformada');


#CHAMADA : transforma_projetiva('Placa_de_Transito_PARE.jpg', [0 0 3 4;1 350 4 300; 350 1 390 4; 350 350 300 350]);

endfunction
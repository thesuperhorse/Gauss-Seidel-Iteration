c = 20;
d = 40;
e = 10;

mat = zeros(c,d);
mat(end,:) = 100;
mat(:,end) = 50;

for k = 1:c
    for i = 2:(c-1) %for x
        for j = 2:(d-1)
            mat(i,j) = (mat(i+1,j) + mat(i-1,j) + mat(i,j+1) + mat(i,j-1))/4;
        end
    end
end
        
[X,Y] = meshgrid(0:0.1:4,0:0.1:2);
surf(X,Y,mat);

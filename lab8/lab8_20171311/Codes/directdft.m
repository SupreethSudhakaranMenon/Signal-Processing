
function X = directdft(x)
N = length(x); 

A = 0:N-1;
B = A';
C = B*A;
w = exp(-1i*2*pi/N);
F = w^C; 
x
X = F.*x; 
end


%F = zeros(N,N); 
%for c = 1:N 
     
 %   for p = 1:N
  %      F(c,p) = F(c,p) + w*p*c; 
  %  end 
%end
%F = expp(F); 
%X = F*x; 
%end


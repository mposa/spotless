function a=clean(a,tol)
   if nargin < 2, tol = 1e-6; end
   sz = size(a);
   [x,p,M]=decomp(a);
   M(abs(M)<tol)=0;

   if isequal(sz, [1 1])
     a=recomp(x,p,M);
   else
     if isempty(M)
       a = zeros(sz);
     else
       a=reshape(recomp(x,p,M),sz);
     end
   end
end

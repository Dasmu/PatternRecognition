function [Matrix, exValue] = lhood(A)

[m,n] = size(A);

exValue = 1/n * sum(A,2);
% A(1,:)
% CovMat(1,1) = 1/n * (sum((A(1,:)-exValue(1))*(A(1,:)-exValue(1))'));
% CovMat(1,2) = 1/n * (sum((A(1,:)-exValue(1))*(A(2,:)-exValue(2))'));
% CovMat(1,3) = 1/n * (sum((A(1,:)-exValue(1))*(A(3,:)-exValue(3))'));


for i = 1:3
        CovMat(i,1) = 1/n * (sum((A(i,:)-exValue(i))*(A(1,:)-exValue(1))'));
        CovMat(i,2) = 1/n * (sum((A(i,:)-exValue(i))*(A(2,:)-exValue(2))'));
        CovMat(i,3) = 1/n * (sum((A(i,:)-exValue(i))*(A(3,:)-exValue(3))'));
end
Matrix = CovMat;
% 
% for k = 1:n
%     ende(k) = [(A(1,k)-exValue(1));(A(2,k)-exValue(2));(A(3,k)-exValue(3))]'*...
%         inv(CovMat)*...
%         [(A(1,k)-exValue(1));(A(2,k)-exValue(2));(A(3,k)-exValue(3))];
% end

        
% prop1 = (A(1,:)-exValue(1))'*inv(CovMat)*(A(1,:)-exValue(1));
% prop2 = (A(1,:)-exValue(1))'*inv(CovMat)*(A(2,:)-exValue(2));
% prop3 = (A(3,:)-exValue(3))'*inv(CovMat)*(A(3,:)-exValue(3));
% % 
%  loga = log(2*pi^3*det(CovMat))
%  minusAnf = -(n/2)
%  anfang = loga*minusAnf
% finish = 1/2*sum(ende(1:n))
% 
% for h = 1:n
%     z(h) = 1/sqrt(2*pi^3*det(CovMat))*exp(-1/2*ende(h));
% end
% hist(z)
% w = prod(z)

%  y = -(n/2)*log(2*pi^3*det(CovMat))-1/2*sum(ende(1:n));

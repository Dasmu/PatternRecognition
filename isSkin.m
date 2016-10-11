function y = isSkin(x,CovSkin,MeanSkin,CovNoSkin,MeanNoSkin)

n = length(x);
% determinante = det(CovSkin)
% anfang = 1/sqrt((2*pi)^3*det(CovSkin))
% ende = exp(-1/2*((x- MeanSkin)'*inv(CovSkin)*(x-MeanSkin)))

probSkin = 1/sqrt((2*pi)^3*det(CovSkin))*exp(-1/2*((x- MeanSkin)'*inv(CovSkin)*(x-MeanSkin)));
probNoSkin = 1/((2*pi)^(3/2)*(det(CovNoSkin))^(1/2))*exp(-1/2*((x- MeanNoSkin)'*inv(CovNoSkin)*(x-MeanNoSkin)));


if (probSkin > probNoSkin)
    y = 1;
else
    y = 0; 
end


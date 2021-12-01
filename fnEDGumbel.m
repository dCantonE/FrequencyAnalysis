% Evento de Diseno con Gumbel
function p = fnEDGumbel(alfa,mu,Tr)
    n=length(Tr); % tamaño de la muestra
    p = alfa*(-log(-log((Tr-1)./Tr)))+mu;
    for i=1:n
        if(p(i) < 0)
            p(i) = 0;
        end
    end
end
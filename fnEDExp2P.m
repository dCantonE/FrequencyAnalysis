% Evento de Diseno con Exponencial de 2P
function p = fnEDExp2P(beta,mu,pr)
    n=length(pr); % tamaño de la muestra
    p = -beta*(log(1-(1-pr)))+mu;
    for i=1:n
        if(p(i) < 0)
            p(i) = 0;
        end
    end
end
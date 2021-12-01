% Evento de Diseno con Exponencial de 1P
function p = fnEDExp1P(mu,pr)
    n=length(pr); % tamaño de la muestra
    p = -mu*(log(1-(1-pr)));
    for i=1:n
        if(p(i) < 0)
            p(i) = 0;
        end
    end
end
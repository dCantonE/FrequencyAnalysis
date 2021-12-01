% Variable Reducida de Gumbel
% solo para cuestiones de graficacion
function p = fnReducedGumbel(pr)
    p = -log(-log((pr-1)./pr));
end
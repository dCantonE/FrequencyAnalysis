% Empirical and adjusted frequency curves for confirmed cases of COVID-19
% in 17 countries. The fitted distributions are: One-Parameter Exponential,
% Two-Parameter Exponential and Gumbel.

close all; clearvars; clc;

paises={'Spain','USA','France','UnitedKindom','Colombia','India','Brasil','Argentina','Indonesia','Iran','Germany','Mexico','Russia','Turkey','Italia','Polonia','China'};

for i=1:2%length(paises)
    fig=figure(i);   
    tag = strcat('dataset/',paises{i},'.txt');
    data = abs(fix(load(tag)));

    fnFrequencyAnalysis(data);

% image write    
%     frame = getframe(fig);
%     im = frame2im(frame);
%     txt = strcat(paises{i},'.tif');
%     imwrite(im,txt,'tif')
end
disp('Finished...')

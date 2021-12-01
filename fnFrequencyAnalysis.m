function fnFrequencyAnalysis(data)
% Frequency analysis fits one-parameter Exponential, two-parameter Exponential
% and Gumbel distributions with respect to historical data.
%
% References:
%  https://www.mdpi.com/2073-4433/10/5/257
%
% Authors:
%   Intellectual author: Alfonso Gutierrez-Lopez
%   Code: Daniel Canton-Enriquez
%   Contributors: Martin Munoz-Mandujano
%                 Jose Niembro
%                 Daniel Alarcon
%                 Ivan Gonzalez
%                 Agueda Montes-Gutierrez
%                 Jorge Arcadia
%
% Version 1.1 - 31/08/2021

n=length(data); % sample size
EveOrd =  sort(data,'descend'); % sorted events

orden = 1:n;
Tr = (n+1)./orden; % frequency, return period
Pr = 1./Tr; % probability
Vr = fnReducedGumbel(Tr); % Calculated event
VExp1P = []; % Exponential 1P
VExp2P = []; % Exponential 2P
VGumbel = []; % Gumbel

% Parameters
% Exp 1P
muExp1P = mean(EveOrd);
% Exp 2P
beta = std(EveOrd); 
muExp2P = mean(EveOrd)-beta;
% Gumbel
mu = mean(EveOrd);
sigma = std(EveOrd);
alfa=0.78*sigma;
mu=mu-0.45*sigma;

for i=1:n
    VExp1P = fnEDExp1P(muExp1P,Pr);
    VExp2P = fnEDExp2P(beta,muExp2P,Pr);
    VGumbel = fnEDGumbel(alfa,mu,Tr);
end

% Time, Event, SortedEvent, ReturnPeriod, Probability, ReducedVariable,
% Exp1P, Exp 2P, Gumbel
data = single([orden' data EveOrd orden' Tr' Pr' Vr' VExp1P' VExp2P' VGumbel']);

% Empirical and fifted frequency curves
scatter(Vr,data(:,3),'k','filled')
grid on
hold on
% Exp 1P, Exp 2P and Gumbel
plot(data(:,7),data(:,8),'b','LineWidth',2)
plot(data(:,7),data(:,9),'r','LineWidth',2)
plot(data(:,7),data(:,10),'Color','#77AC30','LineWidth',2)

legend('Daily data','Exp 1P','Exp 2P','Gumbel','Location','northwest')
ylabel('Daily Confirmed COVID-19 Cases')
xlabel('Reduced Variable')

end

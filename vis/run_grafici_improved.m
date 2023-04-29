% Script for improved graph

% Prende i set di dati acquisiti per le varie temperatura e per ciascuno
% invoca analisi_raw, che si occupa di "pulire" i dati grezzi (vedi
% commento funzione) e plottare.
% Questo script plotta le curve singole per le varie temperature e un
% grafico finale con tutte le curve sovrapposte.

font = 18;

figure('WindowStyle', 'docked');
set(axes,'FontSize',font,'TickLabelInterpreter','latex');
hold on;
hold on;
analisi_raw_improved('run2', 146, '#648FFF');
analisi_raw_improved('run3', 151, '#785EF0');
analisi_raw_improved('run8', 163, '#DC267F');
analisi_raw_improved('run7', 170, '#FE6100');
analisi_raw_improved('run6', 180, '#FFB000');
title('Curve di Franck-Hertz al variare della temperatura', ...
	'Interpreter', 'latex');
set(legend, 'Interpreter', 'latex')
legend('146 $^{\circ}$C', '151 $^{\circ}$C', '163 $^{\circ}$C', ...
	'170 $^{\circ}$C', '180 $^{\circ}$C', 'location', 'nw');


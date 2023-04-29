% Script for improved graph

% Prende i set di dati acquisiti per le varie temperatura e per ciascuno
% invoca analisi_raw, che si occupa di "pulire" i dati grezzi (vedi
% commento funzione) e plottare.
% Questo script plotta le curve singole per le varie temperature e un
% grafico finale con tutte le curve sovrapposte.

font = 18;

figure('WindowStyle', 'docked');
hold on;
hold on;
analisi_raw('run2', 146);
analisi_raw('run3', 151);
analisi_raw('run8', 163);
analisi_raw('run7', 170);
analisi_raw('run6', 180);
title('Curve di Franck-Hertz al variare della temperatura');
set(legend)
legend('146 °C', '151 °C', '163 °C', ...
	'170 °C', '180 °C', 'location', 'nw');


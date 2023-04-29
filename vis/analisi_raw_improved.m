function analisi_raw_improved(str, T, color)

load(str);
numeroRipetizioni = durata*rate;

if exist('raw_data')==1
	in = raw_data(:);
end

for i=1:length(V)
 	i_iniziale = (i-1)*numeroRipetizioni + 1;
 	i_finale = i*numeroRipetizioni;
	media = mean(in(i_iniziale:i_finale));
	dev = std(in(i_iniziale:i_finale));
	
	tieni = i_iniziale - 1 + find(abs(in(i_iniziale:i_finale) - media) < 2*dev);
	aa(i) = mean(in(tieni)); % errore qua
	lungh(i) = length(tieni);
	% Dice quanti punti sono stati tenuti. Non serve ma può essere
	% un'informazione interessante a volte
	e_aa(i) = std(in(tieni))/lungh(i);
end

% Serve per tenere conto del fatto che la curva a 151°C è stata campionata
% il doppio (passo 0.05 invece che 0.1). Qui toglie i valori in mezzo in
% modo da avere lo stesso passo
if T == 151
	passo = 2;
else
	passo = 1;
end

%set(axes,'FontSize',14,'TickLabelInterpreter','latex');
hold on;
plot(V(2:passo:end-1)*3.4, aa(2:passo:end-1)*10, '.-', ...
	'MarkerSize', 10, 'Color', color);
% Si potrebbero mettere anche le barre d'errore, ma sono piccolissime.
xlabel('$V_{G_1G_2}$ (V)', 'Interpreter', 'latex');
ylabel('$I$ (nA)', 'Interpreter', 'latex');
title(['Curva di Franck-Hertz per $T =$ ', num2str(T), ' $^{\circ}$C'], ...
	'Interpreter', 'latex');


end
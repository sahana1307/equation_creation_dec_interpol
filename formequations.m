clear all;
close all;


nd = 0:100;
data = "x" + nd;
L=3;
lendata = length(data);
dataz = [data;zeros(L-1,lendata)];
redata = reshape(dataz,1,lendata*L);
nc = 0:29;
coeff = "c" + nc;

templenop = 60;

%for outputlen = 1:length(coeff)

for outputlen = 1:templenop

for len = 1:length(coeff)
	condandc(len) = strcat(redata(len),'.',coeff(len),'+');
end

	y(outputlen) =  strjoin(condandc);
	clear condandc;
	redata = circshift(redata, -1);
	y_output = strcat('y',num2str(outputlen),'=',' ',y(outputlen));
	writematrix(y_output, 'outputl3c30.txt','WriteMode', 'append')
end
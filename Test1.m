%Instructions: 
%-connect arudino
%-upload code
%-type commands:
%    clear all
%    clc
%    delete(instrfindall);
%-run

arduino = serial('COM8','Baudrate', 9600);
fopen(arduino);

x = linspace(1,100);
for i=1:length(x)
    y(i)=fscanf(arduino,'%d');
end

fclose(arduino);
disp('making plot...');
plot(x,y);
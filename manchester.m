function [] = manchester(ds)
%MANCHESTER Summary of this function goes here
%   Detailed explanation goes here
x = [];
x = [x, 0];
for i=1:length(ds)
    x = [x, i-0.5];
    x = [x, i-0.5];
    x = [x, i];
    x = [x, i];
end
x(end)=[];

y = [];
for i = 1:length(ds)
    if ds(i) == 0
        y = [y, 1];
        y = [y, 1];
        y = [y, -1];
        y = [y, -1];
    else
        y = [y, -1];
        y = [y, -1];
        y = [y, 1];
        y = [y, 1];
    end
end

plot(x,y)
ylim([-2 2])

end


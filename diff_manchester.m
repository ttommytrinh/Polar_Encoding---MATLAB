function [] = diff_manchester(ds, previous_voltage)
%DIFF_MANCHESTER Summary of this function goes here
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
if previous_voltage == -1
    if ds(1) == 0
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
else
    if ds(1) == 0
        y = [y, -1];
        y = [y, -1];
        y = [y, 1];
        y = [y, 1];
    else
        y = [y, 1];
        y = [y, 1];
        y = [y, -1];
        y = [y, -1];
    end
end
       
for i = 2:length(ds)
    if (ds(i) == 0 & y(length(y)) == -1) | (ds(i) == 1 & y(length(y)) == 1)
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


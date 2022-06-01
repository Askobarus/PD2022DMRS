clc
clear;
syms x
a = 1
b = 1
f = 1 / (a * x + b)
int(f, x)

lim1 = linspace(1, 100, 100);
lim2 = linspace(1, 100, 100);
lim2 = lim2.^2
fid = fopen("number_2.txt", "w")
fid2 = fopen("timeNumber2.txt", "w")
tic
for i = 1:100
    expr =  string(eval(int(f, [lim1(i), lim2(i)]))) + newline;
    fwrite(fid, expr);
end
t = toc
fwrite(fid2, string(t));
fclose(fid)
fclose(fid2)
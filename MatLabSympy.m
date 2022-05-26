clc
clear;
syms x
a = 2
b = 1
f = a * x + b
int(1 / f, x)

lim1 = randi([1 100], 1, 100);
lim2 = randi([1 100], 1, 100);
fid = fopen("number_2.txt", "w")
fid2 = fopen("timeNumber2.txt", "w")
tic
for i = 1:100
expr = string(int(1/ f, [lim1(i), lim2(i)])) + newline;
fwrite(fid, expr);
end
t = toc
fwrite(fid2, string(t));
fclose(fid)
fclose(fid2)
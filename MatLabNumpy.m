clc
clear
fID = fopen("indreznumpy.txt", 'w'); % Файл со всеми временами выполнения для всех матриц
for i = 1:50
    A = randi([-100 100], 100);
        
    fileID = strcat('ind', num2str(i), '.txt');
    writematrix(A, fileID, 'Delimiter', '\t');
    
    tic 
    
    A1 = readmatrix(fileID);
    
    x = unique(A1);
    fid = fopen("numpyrez"+string(i)+".txt", "w"); % Файл со результатом для одной матрицы
    
    fprintf(fid, '%f\n', x);
    fclose(fid);
    
    a = toc
    fprintf(fID, string(i)+'. %f\n', a);
end
fclose(fID);
clc
clear
fID = fopen("indreznumpy.txt", 'w'); % Файл со всеми временами выполнения для всех матриц
for i = 1:50
    A = randi([-100 100], 100);
        
    fileID = fopen("ind"+string(i)+".txt", 'w'); % Файл с матрицой
    fprintf(fileID, '%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\n', A);
    fclose(fileID);
    
    tic
    fileID = fopen("ind"+string(1)+".txt", 'r'); 
    
    A1 = fscanf(fileID, '%d\n' ,[100 100]);
    fclose(fileID);
    
    x = unique(A1);
    fid = fopen("numpyrez"+string(i)+".txt", "w"); % Файл со результатом для одной матрицы
    
    fprintf(fid, '%f\n', x);
    fclose(fid);
    
    a = toc
    fprintf(fID, string(i)+'. %f\n', a);
end
fclose(fID);
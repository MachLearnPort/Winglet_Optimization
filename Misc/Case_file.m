clc
CR=load('CR.mat');
CR=CR.CR;
casePath = 'C:\Thesis\Case_Files\case_file';
file_open = fopen(casePath);
dosCommand=sprintf('%s\\avl.exe','C:\Users\Jeff\Desktop\Thesis\My Stuff');
system(dosCommand ,'-echo');
sprintf(file_open,['load',CR]);
sprintf(file_open,['C:\Thesis\AVL_Files\AVL_file.avl',CR]);
fprintf(file_open,['mass',CR]);
fprintf(file_open,['C:\Thesis\MASS_Files\mass_file.mass',CR]);
fprintf(file_open,['case',CR]);
fprintf(file_open,['C:\Thesis\Case_Files\case_file',CR]);
fprintf(file_open,['OPER',CR]);
fprintf(file_open,['X',CR]);
fprintf(file_open,['W',CR]);
fprintf(file_open,['C:\Thesis\Force_Files\force_file',CR]);
fprintf(file_open,['Quit',CR]);
fclose(file_open);

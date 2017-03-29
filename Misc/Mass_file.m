        massFile=fopen('C:\Thesis\Mass_Files\mass_file.mass','w'); 
        fprintf(massFile,'Lunit = 1.0 m\n');
        fprintf(massFile,'Munit = 1.0 kg\n');
        fprintf(massFile,'Tunit = 1.0 s\n');
        fprintf(massFile,'g = 9.81\n');
        fprintf(massFile,'rho = 1.225\n');
        fclose(massFile);
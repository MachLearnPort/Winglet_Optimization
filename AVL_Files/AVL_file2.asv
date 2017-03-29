function [avl_file]= AVL_file(x)      
% clear
% clc
        
% x =  [0.5  8   0   1    0  0   0   1];
        avlFile=fopen('C:\Thesis\AVL_Files\AVL_file.avl','w');
    
        ac.wing.area=10.0;
        ac.wing.Chord=1.0;
        ac.winglet.Chord=0.2;
        ac.wing.span=10.0;
        ac.mass.cg = [0.50 0 0];
        ac.aero.Cd0=0.015;
        xyz_1=[0 0 0];
        xyz_2=[0 10 0];
        xyz_3=[0 0 0];
        xyz_4=[0.6 0 0.3];
        
        % Write file header
        fprintf(avlFile,'Winglet\n');
        fprintf(avlFile,'#Mach\n');
        fprintf(avlFile,'0.0\n');
        fprintf(avlFile,'#IYsym  IZsym  ZSym\n');
        fprintf(avlFile,'0  0  0.0\n');
        fprintf(avlFile,'#Sref  Cref  Bref\n');
        fprintf(avlFile,'%s  %s  %s\n',num2str(ac.wing.area),num2str(ac.wing.Chord),num2str(ac.wing.span));
        fprintf(avlFile,'#Xref  Yref  Zref\n');
        fprintf(avlFile,'%s  %s  %s\n',num2str(ac.mass.cg(1)),num2str(ac.mass.cg(2)),num2str(ac.mass.cg(3)));
        fprintf(avlFile,'%s\n',num2str(ac.aero.Cd0));
        fprintf(avlFile,'#\n');
        fprintf(avlFile,'#\n');
        % Define Wing Geometry
        fprintf(avlFile,'#====================================================================\n');
        fprintf(avlFile,'SURFACE\n');
        fprintf(avlFile,'WING\n');
        fprintf(avlFile,'#\n');
        fprintf(avlFile,'#Nchordwise  Cspace   Nspanwise   Sspace\n');
        fprintf(avlFile,'%s  %s  %s  %s\n','8.0','1.0','12.0','1.0');
        fprintf(avlFile,'#\n');
        fprintf(avlFile,'Index\n');
        fprintf(avlFile,'1\n');
        fprintf(avlFile,'#\n');
        fprintf(avlFile,'YDUPLICATE\n');
        fprintf(avlFile,'0.0\n');
        fprintf(avlFile,'#\n');
        
        %Define First Wing Section%
            fprintf(avlFile,'#-------------------------------------------------------------\n');
            fprintf(avlFile,'SECTION\n');
            fprintf(avlFile,'#Xle  Yle  Zle  Chord  Ainc  Nspanwise  Sspace\n');
            fprintf(avlFile,'%s  %s  %s  %s  %s  %s  %s\n',num2str(xyz_1(1)),num2str(xyz_1(2)),num2str(xyz_1(3)),num2str(ac.wing.Chord),'0','0','0');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'AFIL\n');
            fprintf(avlFile,'%s\n','C:\Thesis\Airfoil\NLF0115.dat');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'#\n');
       
        %Define Second Wing Section%
            fprintf(avlFile,'#-------------------------------------------------------------\n');
            fprintf(avlFile,'SECTION\n');
            fprintf(avlFile,'#Xle  Yle  Zle  Chord  Ainc  Nspanwise  Sspace\n');
            fprintf(avlFile,'%s  %s  %s  %s  %s  %s  %s\n',num2str(xyz_2(1)),num2str(xyz_2(2)),num2str(xyz_2(3)),num2str(ac.wing.Chord),'0','0','0');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'AFIL\n');
            fprintf(avlFile,'%s\n','C:\Thesis\Airfoil\NLF0115.dat');
            fprintf(avlFile,'#\n');
            
        % Define Winglet Geometry
        fprintf(avlFile,'#====================================================================\n');
        fprintf(avlFile,'SURFACE\n');
        fprintf(avlFile,'WINGLET\n');
        fprintf(avlFile,'#\n');
        fprintf(avlFile,'#Nchordwise  Cspace   Nspanwise   Sspace\n');
        fprintf(avlFile,'%s  %s  %s  %s\n','5','1.0','6.0','1.0');
        fprintf(avlFile,'#\n');
        fprintf(avlFile,'Index\n');
        fprintf(avlFile,'1\n');
        fprintf(avlFile,'#\n');
        fprintf(avlFile,'YDUPLICATE\n');
        fprintf(avlFile,'0\n');
        fprintf(avlFile,'#\n');
            
        %Define Third Wing Section%
            fprintf(avlFile,'#-------------------------------------------------------------\n');
            fprintf(avlFile,'SECTION\n');
            fprintf(avlFile,'#Xle  Yle  Zle  Chord  Ainc  Nspanwise  Sspace\n');
            fprintf(avlFile,'%s  %s  %s  %s  %s  %s  %s\n',num2str(xyz_3(1)),num2str(xyz_3(2)),num2str(xyz_3(3)),'0.5','0','0','0');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'AFIL\n');
            fprintf(avlFile,'%s\n','C:\Thesis\Airfoil\NLF0115.dat');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'Translate\n');
            fprintf(avlFile,'#dX  dY  dZ\n');
            fprintf(avlFile,'%s  %s  %s\n','0','10','0');
            fprintf(avlFile,'#\n');
            
             %Define Fourth Wing Section%
            fprintf(avlFile,'#-------------------------------------------------------------\n');
            fprintf(avlFile,'SECTION\n');
            fprintf(avlFile,'#Xle  Yle  Zle  Chord  Ainc  Nspanwise  Sspace\n');
            fprintf(avlFile,'%s  %s  %s  %s  %s  %s  %s\n',num2str(xyz_4(1)),num2str(xyz_4(2)),num2str(xyz_4(3)),'0.25','0','0','0');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'AFIL\n');
            fprintf(avlFile,'%s\n','C:\Thesis\Airfoil\NLF0115.dat');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'Translate\n');
            fprintf(avlFile,'#dX  dY  dZ\n');
            fprintf(avlFile,'%s  %s  %s\n','0','10','0');
            fprintf(avlFile,'#\n');
            
        fprintf(avlFile,'#-------------------------------------------------------------');
        fclose(avlFile);
end
function [avl_file]= winglet_AVL(x)      
% clear
% clc
        
        avlFile=fopen('C:\Thesis\AVL_Files\AVL_file.avl','w');
%% Span calculator
%span is increase by however much the Y offset of the winglet tip chord is offset
winglet_span = x(6);
%% surface area area calculator
%winglet_area is calculated by seperating the quadralateral it forms into 2
%triangles: winglet_Area = (base1*height)/2 + base2*height/2)height remains constant between the two bases, where base 1 is the winglet root chord and base 2 is the winglet tip chord
%Height is the pathgorean theorm of the y offset and the z offset

winglet_area = ((x(4)*(sqrt(x(7)^2+x(6)^2)))/2)+((x(8)*(sqrt(x(7)^2+x(6)^2)))/2);
%% AVL file inputs and Writing script
        ac.wing.area=48.97492779 + winglet_area;
        ac_wing_Chord_root=3.843;
        ac_wing_Chord_tip=2.0;
        ac.wing.Chord=2.9215;
        ac.wing.span=16.7642 + winglet_span;
        ac.mass.cg = [0.1281083583 0 0];
        ac.aero.Cd0=0.015;
        xyz_1=[0 0 0];
        xyz_2=[0 16.764 0];
      
        
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
            fprintf(avlFile,'%s  %s  %s  %s  %s  %s  %s\n',num2str(xyz_1(1)),num2str(xyz_1(2)),num2str(xyz_1(3)),num2str(ac_wing_Chord_root),'0','0','0');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'AFIL\n');
            fprintf(avlFile,'%s\n','C:\Thesis\Airfoil\EPPLER560.dat');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'#\n');
       
        %Define Second Wing Section%
            fprintf(avlFile,'#-------------------------------------------------------------\n');
            fprintf(avlFile,'SECTION\n');
            fprintf(avlFile,'#Xle  Yle  Zle  Chord  Ainc  Nspanwise  Sspace\n');
            fprintf(avlFile,'%s  %s  %s  %s  %s  %s  %s\n',num2str(xyz_2(1)),num2str(xyz_2(2)),num2str(xyz_2(3)),num2str(ac_wing_Chord_tip),'0','0','0');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'AFIL\n');
            fprintf(avlFile,'%s\n','C:\Thesis\Airfoil\EPPLER560.dat');
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
            fprintf(avlFile,'%s  %s  %s  %s  %s  %s  %s\n',num2str(x(1)),num2str(x(2)),num2str(x(3)),num2str(x(4)),'0','0','0');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'AFIL\n');
            fprintf(avlFile,'%s\n','C:\Thesis\Airfoil\NACA0006.dat');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'Translate\n');
            fprintf(avlFile,'#dX  dY  dZ\n');
            fprintf(avlFile,'%s  %s  %s\n','0','16.7642','0');
            fprintf(avlFile,'#\n');
            
             %Define Fourth Wing Section%
            fprintf(avlFile,'#-------------------------------------------------------------\n');
            fprintf(avlFile,'SECTION\n');
            fprintf(avlFile,'#Xle  Yle  Zle  Chord  Ainc  Nspanwise  Sspace\n');
            fprintf(avlFile,'%s  %s  %s  %s  %s  %s  %s\n',num2str(x(5)),num2str(x(6)),num2str(x(7)),num2str(x(8)),'0','0','0');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'AFIL\n');
            fprintf(avlFile,'%s\n','C:\Thesis\Airfoil\NACA0006.dat');
            fprintf(avlFile,'#\n');
            fprintf(avlFile,'Translate\n');
            fprintf(avlFile,'#dX  dY  dZ\n');
            fprintf(avlFile,'%s  %s  %s\n','0','16.7642','0');
            fprintf(avlFile,'#\n');
            
        fprintf(avlFile,'#-------------------------------------------------------------');
        fclose(avlFile);
end
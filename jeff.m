function [] = jeff()
%%
clear
clc

%x(1) - winglet root airfoil leading egde x0ffset at wing tip
%x(2) - winglet root airfoil leading egde y0ffset at wing tip NOTE: The
%translae function is used in AVL, so conisder from wing tip
%x(3) - winglet root airfoil leading egde z0ffset at wing tip
%x(4) - winglet root airfoil chord length
%x(5) - winglet tip airfoil leading egde x0ffset at wing tip
%x(6) - winglet tip airfoil leading egde y0ffset at wing tip
%x(7) - winglet tip airfoil leading egde z0ffset at wing tip
%x(8) - winglet tip airfoil chord lenght


%x =  [0.5 8   0   1    0  0   0       1]
LB = [0    0  0   0.1   0     0     0.45   0.1];
UB = [1.0  0  0    1    3     0.75   2    0.25];


options=gaoptimset('PopulationSize',5,'Generations',2,'Display','iter','TolFun',1e-999,'TolCon',1e-999,'UseParallel', 'always','PlotFcns', {@gaplotbestf,@gaplotmaxconstr,@gaplotscorediversity,@gaplotscores});
%% Running Optimization

[x,fval] = ga(@Objectivefcn,length(LB),[],[],[],[],LB,UB,@Constfun,options)


function f = Objectivefcn(x)
        
       AVL_file(x);
       AVL_starter;

%Scan Force File%
fid=fopen('C:\Thesis\Force_Files\Forces.txt');
A=textscan(fid,'%s', 6,'Headerlines', 23);
fclose(fid);

%Get force values%
CLtot = str2num(A{1,1}{3,1})
CDtot = str2num(A{1,1}{6,1})

    try
        f = -CLtot/CDtot
    catch
        f = -1
    end
    
    end

   function [g,gEq]=Constfun(x)
        g = [];
        gEq = [];
    end

end
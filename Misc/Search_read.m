function [CLtot, CDtot] = Search_read()
%Scan Force File%
fid=fopen('C:\Thesis\Force_Files\Forces.txt');
A=textscan(fid,'%s', 6,'Headerlines', 23)
fclose(fid);

%Get force values%
CLtot=A{1,1}{3,1};
CDtot=A{1,1}{6,1};
end
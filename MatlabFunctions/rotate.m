%
%     rotate using rotation matrix
%

%     Input is in degrees, output is in degrees
 

function [alat,varargout] = rotate(beflat,beflon,rotmat)

[x1,x2,x3]=sphcar(beflat,beflon);
y1 = rotmat(1,1)*x1 + rotmat(1,2)*x2 + rotmat(1,3)*x3;
y2 = rotmat(2,1)*x1 + rotmat(2,2)*x2 + rotmat(2,3)*x3;
y3 = rotmat(3,1)*x1 + rotmat(3,2)*x2 + rotmat(3,3)*x3;
[aftlat,aftlon]=carsph(y1,y2,y3);
alat=aftlat;
varargout(1)={aftlon};

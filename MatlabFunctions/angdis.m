%
%     find the angular distance between two points
%

function ang = angdis(lat1,lon1,lat2,lon2)

%input assumed in degrees; output is in degrees

[x1,x2,x3]=sphcar(lat1,lon1);
[y1,y2,y3]=sphcar(lat2,lon2);
rangdis = abs(acos(x1*y1 + x2*y2 + x3*y3));
ang= raddeg(rangdis);

%
%     set up rotation matrix
%

function rmat = matrix(polat,polon,domega)

%     polat,polon,omega all assumed to be in degrees

rotmat = eye(3);
omega=degrad(domega);
[c1,c2,c3] = sphcar(polat,polon);
ss = sin(omega/2);
r = c1*ss;
s = c2*ss;
t = c3*ss;
u = cos(omega/2);
rotmat(1,1) = r*r-s*s-t*t+u*u;
rotmat(1,2) = 2*(r*s-t*u);
rotmat(1,3) = 2*(t*r+s*u);
rotmat(2,1) = 2*(r*s+t*u);
rotmat(2,2) = s*s-t*t-r*r+u*u;
rotmat(2,3) = 2*(s*t-r*u);
rotmat(3,1) = 2*(t*r-s*u);
rotmat(3,2) = 2*(s*t+r*u);
rotmat(3,3) = t*t-r*r-s*s+u*u;
rmat=rotmat;

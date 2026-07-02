%%
% Define a 3 x 3 rotation  matrix
function res = rotate3(rot_axis,angle)
  arguments
    rot_axis (1,1) string
    angle (1,1) sym
  end
  % definitions of symbolic variables
  syms Rx(theta) Ry(theta) Rz(theta) res

  % Definition of rotation matrices
  % rotation around x-primary axis
  Rx(theta) = [1 0 0;
    0 cos(theta) -sin(theta);
    0 sin(theta) cos(theta)];

  % rotation around y-primary axis
  Ry(theta) = [cos(theta) 0  sin(theta);
    0          1  0
    -sin(theta) 0 cos(theta)];

  % rotation around z-primary axis
  Rz(theta) = [cos(theta) -sin(theta)  0;
    sin(theta)   cos(theta) 0;
    0 0 1];

  switch rot_axis
    case 'X'
      res = Rx(angle);
    case 'Y'
      res = Ry(angle);
    case 'Z'
      res = Rz(angle);
    otherwise
      error('Unknown rotation axis %s. Options are {X,Y,Z}.',rot_axis)
  end
end
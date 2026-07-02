%%  skew_matrix
% Create a skew matrix given the three components of a vector.
% 
%  |  0  -rz  ry | 
%  | rz   0  -rx |
%  | -ry  rx  0  |
% 
function Skm = skew_matrix(coords)
  arguments
    coords (1,3)
  end
  syms Skm rx ry rz 
  rx = coords(1);
  ry = coords(2);
  rz = coords(3);
  
  Skm = sym(zeros(3,3));
  Skm(2,1) =  rz;
  Skm(1,2) = -rz;
  Skm(1,3) =  ry;
  Skm(3,1) = -ry;
  Skm(2,3) = -rx;
  Skm(3,2) =  rx;
  
end
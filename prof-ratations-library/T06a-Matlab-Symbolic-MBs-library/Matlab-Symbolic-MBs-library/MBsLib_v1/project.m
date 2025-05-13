%% project
% Project coordinates of a point or of a vector in given frame
% Return a new object with coordinates in the new frame
function res = project(obj,frame)
  %arguments
  %  rot_axis (1,1) string
  %  angle (1,1) sym
  %end
  syms pp res
  if is_frame(frame)
    if isstruct(obj) & ( strcmp(obj.type,'POINT') || strcmp(obj.type,'VECTOR'))
      pp = inv_frame(frame)*(obj.frame*obj.coords);
      res = make_POINT(frame,pp(1:3));
    else
      error('Unexpected input: not a POINT or a VECTOR')
    end
  end
end
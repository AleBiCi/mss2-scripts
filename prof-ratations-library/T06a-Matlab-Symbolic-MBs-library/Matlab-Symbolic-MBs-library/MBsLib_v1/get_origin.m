%% get_origin
% Get the unit vector of a given frame for a desired axis
% Return a new object with coordinates of the unit vector in the frame
function res = get_origin(frame)
  arguments
    frame (4,4) 
  end
  if ~is_frame(frame)
    error('A frame matrix is expected')
  end
  res = make_POINT(frame,frame(1:3,4));
end
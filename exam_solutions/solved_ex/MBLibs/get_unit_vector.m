%% get_rotation_matrix
% Get the rotation matrix of a given frame
% Return a  3 x 3 rotation matrix
function res = get_unit_vector(rot_axis,frame)
  arguments
    rot_axis (1,1) string
    frame (4,4) 
  end
  if ~is_frame(frame)
    error('A frame matrix is expected')
  end

    switch rot_axis
    case 'X'
      res = frame(:,1);
    case 'Y'
      res = frame(:,2);
    case 'Z'
      res = frame(:,3);
    otherwise
      error('Unknown rotation axis %s. Options are {X,Y,Z}.',rot_axis)
    end
end
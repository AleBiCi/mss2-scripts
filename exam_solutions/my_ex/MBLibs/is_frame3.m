%%
% Check that the matrix is a frame
function res = is_frame3(frame)
  %[nr,nc] = size(frame);
  arguments
    frame (3,3)
  end

  if ~frame(3,3)==1 ...
      & ( frame(3,1:3)*(frame(3,1:3).') == 0 )
    error('Matrix is not a frame');
    res = false;
  else
    res = true;
  end
end

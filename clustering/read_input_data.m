% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	% set these values correctly
    NC = load(file_params);
    points = [];
	  load(file_points);
endfunction

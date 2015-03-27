% The script is used for extracing data produced by sampler program.
% It outputs x range and y range of intersection points.

clear all;
trainInput = fopen('..\\result\\bpTrainInput.txt', 'w');
trainTarget = fopen('..\\result\\bpTrainTarget.txt', 'w');

SAMPLE_DISTANCE_NUM = 10;
OBJECT_DISTANCE_NUM = 8;
SAMPLE_ANGLE_NUM = 8;
PUPIL_SIZE_NUM = 5;

focus_distance = [120, 200, 500, 800, 1000, 1600, 2000, 2500, 3000, 5000];
object_distance = [
    [50, 120, 150, 200, 300, 500, 1000, 5000];
    [50, 100, 150, 200, 300, 500, 1000, 5000];
    [100, 250, 400, 500, 600, 800, 1000, 5000];
    [100, 250, 400, 600, 800, 1000, 1500, 5000];
    [100, 300, 600, 800, 1000, 1200, 2000, 5000];
    [200, 400, 800, 1200, 1600, 1800, 2000, 5000];
    [200, 500, 1000, 1600, 1800, 2000, 2500, 5000];
    [200, 500, 800, 1200, 2000, 2500, 3000, 5000];
    [200, 500, 900, 1400, 2000, 2500, 3000, 5000];
    [200, 500, 900, 1500, 2000, 3000, 4000, 5000]
];
angle_sample = [0, 5, 10, 15, 20, 25, 30, 40];
pupil_size = [2, 3, 4, 6, 8];

% use 5 loops to iterate all parameters
for focusi = 1:SAMPLE_DISTANCE_NUM
    focus = focus_distance(focusi)
    for ri = 1:OBJECT_DISTANCE_NUM
        r = object_distance(focusi, ri);
        for pupili = 1:PUPIL_SIZE_NUM
            pupil = pupil_size(pupili);
            for phii = 1:SAMPLE_ANGLE_NUM
                phi = angle_sample(phii);
                for thetai = 1:SAMPLE_ANGLE_NUM
                    theta = angle_sample(thetai);
                    filename = sprintf('..\\result\\focus-%0.0f\\r-%0.0f\\p-%0.0f\\_%0.1f_%0.1f', focus, r, pupil, phi, theta);
                    fid = fopen(strcat(filename, '.txt'), 'rt');
                    offset = textscan(fid, '%f %f');
                    fclose(fid);
                    
                    coc_x_range = range(offset{1});
                    coc_y_range = range(offset{2});
                    
                    fprintf(trainInput, '%d %d %d %d %d\r\n', focus, r, pupil, phi, theta);
                    fprintf(trainTarget, '%d %d\r\n', coc_x_range, coc_y_range);
                end
            end
        end
    end
end

fclose(trainInput);
fclose(trainTarget);
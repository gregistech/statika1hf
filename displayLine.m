function [] = displayLine(A, B, width, color)
%DISPLAYLINE Summary of this function goes here
%   Detailed explanation goes here
    pts = [A; B];
    plot3(pts(:, 1), pts(:, 2), pts(:, 3), color, 'LineWidth', width);
end


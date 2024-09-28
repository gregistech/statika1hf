function [] = displayVector(start, vector, order, prefix, origin)
%DISPLAY_VECTOR Summary of this function goes here
%   Detailed explanation goes here
    if nargin < 3
        order = 0
    end
    if nargin < 4
        prefix = "F"
    end
    if nargin < 5
        origin = [0, 0, 0];
    end

    quiver3(start(1), start(2), start(3), vector(1), vector(2), vector(3), "LineWidth", 3);
    mid = (2*start + vector) / 2
    if order == 0
        text(mid(1), mid(2), mid(3), sprintf('%s', prefix), 'FontSize', 12)
    else
        text(mid(1), mid(2), mid(3), sprintf('%s_%d', prefix, order), 'FontSize', 12)
    end
end


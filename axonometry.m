% Define the points for the axes
origin = [0 0 0];

figure;
hold on;
grid off;
axis equal;
view(145, 20);
ylim([-1.5 1.5])
xlim([-1.5 1.5])
zlim([-2 2])
zoom(2.5)

axis_scale = 1.5;
x_axis = [1 0 0] * axis_scale;
y_axis = [0 1 0] * axis_scale;
z_axis = [0 0 1] * axis_scale;
quiver3(origin(1), origin(2), origin(3), x_axis(1), x_axis(2), x_axis(3), 'r', 'LineWidth', 1)
text(x_axis(1), x_axis(2), x_axis(3), "X")
quiver3(origin(1), origin(2), origin(3), y_axis(1), y_axis(2), y_axis(3), 'g', 'LineWidth', 1)
text(y_axis(1), y_axis(2), y_axis(3), "Y")
quiver3(origin(1), origin(2), origin(3), z_axis(1), z_axis(2), z_axis(3), 'b', 'LineWidth', 1)
text(z_axis(1), z_axis(2), z_axis(3), "Z")

a = .3;
b = .3;
c = .4;

A = [a, 0, 0];
B = [a, 0, c];
C = [a, b ,c];
D = [0, b, c];
E = [0, b, 0];

points = [A; B; C; D; E];
point_names = ["A"; "B"; "C"; "D"; "E"];

thin_width = 1;
ACE = A + [0, b, 0]; 

displayLine(A, ACE, thin_width, "--k");
displayLine(C, ACE, thin_width, "--k");
displayLine(E, ACE, thin_width, "--k");

F = [[-2, -1, -1]; [0, -1, 0]; [1.3, 0, 0]];
r = [[a, 0, 0]; [0, b, c]; [a, b, c]];

M = [[.8, .5, .3]; [0, 0, -2.1]];
rm = [[0, b, 0]; [a, 0, c]];

for i = 1:size(F, 1)
    displayVector(r(i, :), F(i, :), i, "F", origin);
end

for i = 1:size(M, 1)
    displayVector(rm(i, :), M(i, :), i, "M", origin);
end

for i = 1:size(points, 1)
    text(points(i, 1), points(i, 2) + .05, points(i, 3) + .075, point_names(i), "FontSize", 16);
end

solid_width = 3;
displayLine(A, B, solid_width, "--k");
displayLine(B, C, solid_width, "--k");
displayLine(C, D, solid_width, "--k");
displayLine(D, E, solid_width, "--k");

matlab2tikz('graph.tex', 'arrowHeadSize', 1, 'width', '12cm');
%% Define inputs
a = 1;
b = 0.5;
t = 0.2;
phi = deg2rad(60);
theta_A = deg2rad(0);

X_panels = 5;
Y_panels = 6;

coords = thick_miura_tessellation(a, b, t, phi, theta_A, X_panels, Y_panels);
%coords = thick_miura_offset(a, b, t, phi, theta_A, X_panels, Y_panels);

%% Plotting controls
plot_points = false;
plot_coord_names = false;
plot_data_table = false;

%% Create table of points
if plot_data_table == true
    data_table = array2table(coords, ...
        'VariableNames', {'i','j','k','x','y','z'});
    
    disp(data_table)
end

%% ===== Create Faces Dynamically =====
faces = face_builder(X_panels, Y_panels, coords);

% extract x y z from coords
vertices = coords(:,4:6);
vertices(isnan(vertices)) = 0;

    
figure
grid on
axis equal
view(3)

patch('Vertices',vertices,...
      'Faces',faces,...
      'FaceColor',[0.2 0.6 0.9],...
      'EdgeColor','k',...
      'FaceAlpha',1);
hold on

if plot_points == true
    scatter3(vertices(:,1), vertices(:,2), vertices(:,3), 'filled')
end

if plot_coord_names == true
    for n = 1:size(vertices,1)
        i = coords(n,1);
        j = coords(n,2);
        k = coords(n,3);
    
        label = sprintf('(%d,%d,%d)', i, j, k);
    
        text(vertices(n,1), vertices(n,2), vertices(n,3), ...
             label, ...
             'FontSize',8, ...
             'VerticalAlignment','bottom', ...
             'HorizontalAlignment','right');
    end
end


xlabel('X')
ylabel('Y')
zlabel('Z')

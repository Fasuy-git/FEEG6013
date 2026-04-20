function coords = thick_miura_tessellation(a, b, t, phi, theta_A, X_panels, Y_panels)

% Define max j and i 
j_max = 3 * X_panels - 1;
i_max = 2 * Y_panels - 1;

% Kinematic relationship
theta_Z = 2 * atan(- (tan(theta_A/2))/(sin((2*phi-pi)/2)));

% Relationship between dihedral agle and edge angles
eta_A = acos(sin(phi)^2 * cos(theta_Z) - cos(phi)^2);
eta_Z = acos(sin(phi)^2 * cos(theta_A) + cos(phi)^2);

% Define constants
Tx = cos(eta_A/2) * sin(eta_Z/2);
Ty = cos(eta_A/2) * cos(eta_Z/2);
Tz = sin(eta_A/2) * sin(eta_Z/2);

Norm = sqrt(1 - sin(eta_A / 2)^2 * cos(eta_Z / 2)^2);

% Initalize the coords as an ampty array
coords = [];  

for j = 0:j_max
    for k = 0:2
        for i = 0:i_max

            % Asses if the combination of i,j,k exsits
            is_valid = miura_classify_node(i, j, k);

            if ~is_valid
                % If it doesnt exits then skip through
                continue;
            end

            % Compute coordinates
            [x, y, z] = miura_create_node( ...
                i, j, k, ...
                a, b, t, eta_A, eta_Z, ...
                Tx, Ty, Tz, Norm);

            % Add to coord array
            coords = [coords; i, j, k, x, y, z];

        end
    end
end

end


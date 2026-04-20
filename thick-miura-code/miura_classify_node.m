function is_valid = miura_classify_node(i, j, k)

is_valid = true;

switch mod(j,6)

    case 0
        % j in the set 0, 6, 12, 18, ...

        if k == 1 && j > 0
            % Coord is shared in the j direction, not j == 0
            % as it is the base case
            is_valid = false; return;
        end

        switch mod(i, 4)
            case 0
                % i in the set 0, 4, 8, 12, ...
                if k == 2
                    % Coord is oustide geometry
                    is_valid = false; return;
                elseif k == 0 && i > 0
                    % Coord is shared in the i direction, 
                    % not j == 0 as it is the base case
                    is_valid = false; return;
                end
            case 1
                % i in the set 1, 5, 9, 13, ...
            case 2
                % i in the set 2, 6, 10, 14, ...
                if k == 2
                    % Coord is shared in the i direction
                    is_valid = false; return;
                end
            case 3
                % i in the set 3, 7, 11, 15, ...
                if k == 2
                    % Coord is oustide geometry
                    is_valid = false; return;
                end
        end

    case 1
        % j in the set 1, 7, 13, 19, ...
        switch mod(i, 4)
            case 0
                % i in the set 0, 4, 8, 12, ...
                if k == 0 && i > 0
                    % Coord is shared in the i direction, not i == 0 as it
                    % is the  base case
                    is_valid = false; return;
                end
            case 1
                % i in the set 1, 5, 9, 13, ...
            case 2
                % i in the set 2, 6, 10, 14, ...
                if k == 2
                    % Coord is shared in the i direction
                    is_valid = false; return;
                end
            case 3
                % i in the set 3, 7, 11, 15, ...
        end
    
    case 2
        % j in the set 2, 8, 14, 20, ...
        switch mod(i, 4)
            case 0
                % i in the set 0, 4, 8, 12, ...
                if k == 0 && i > 0
                    % Coord is shared in the i direction, not i == 0 as it
                    % is the base case
                    is_valid = false; return;
                end
            case 1
                % i in the set 1, 5, 9, 13, ...
                if k == 0
                    % Coord is outside of geometry
                    is_valid = false; return;
                end
            case 2
                % i in the set 2, 6, 10, 14, ...
                if k == 0
                    % Coord is outside of geometry
                    is_valid = false; return;
                elseif k == 2
                    % Coord is shared in the i direction
                    is_valid = false; return;
                end
            case 3
                % i in the set 3, 7, 11, 15, ...
        end
    
    case 3
        % j in the set 3, 9, 15, 21, 
        switch mod(i, 4)
            case 0
                % i in the set 0, 4, 8, 12, ...
                if k == 0 
                    % Coord is outside of geometry
                    is_valid = false; return;
                elseif k == 1
                    % Coord is shared in the j direction
                    is_valid = false; return;
                elseif k == 2 && i > 0
                    % Coord is shared in the i direction, not i == 0 as it
                    % is the base case
                    is_valid = false; return;
                end
            case 1
                % i in the set 1, 5, 9, 13, ...
                if k == 1
                    % Coord is shared in the j direction
                    is_valid = false; return;
                end
            case 2
                % i in the set 2, 6, 10, 14, ...
                if k == 0
                    % Coord is shared in the i direction
                    is_valid = false; return;
                elseif k == 1
                    % Coord is shared in the j direction
                    is_valid = false; return;
                end
            case 3
                % i in the set 3, 7, 11, 15, ...
                if k == 0
                    % Coord is outside of geometry
                    is_valid = false; return;
                elseif k == 1
                    % Coord is shared in the j direction
                    is_valid = false; return;
                end
        end

    case 4
        % j in the set 4, 10, 16, 22, ...
        switch mod(i, 4)
            case 0
                % i in the set 0, 4, 8, 12, ...
                if k == 2 && i > 0
                    % Coord is shared in the i direction,not i == 0 as it
                    % is the base case
                    is_valid = false; return;
                end
            case 1
                % i in the set 1, 5, 9, 13, ...
            case 2
                % i in the set 2, 6, 10, 14, ...
                if k == 0
                    % Coord is shared in the i direction
                    is_valid = false; return;
                end
            case 3
                % i in the set 3, 7, 11, 15, ...
        end
    
    case 5
        % j in the set 5, 11, 17, 23, ...
        switch mod(i, 4)
            case 0
                % i in the set 0, 4, 8, 12, ...
                if k == 2 && i > 0
                    % Coord is shared in the i direction,not i == 0 as it
                    % is the base case
                    is_valid = false; return;
                end
            case 1
                % i in the set 1, 5, 9, 13, ...
                if k == 2
                    % Coord is outside of geometry
                    is_valid = false; return;
                end
            case 2
                % i in the set 2, 6, 10, 14, ...
                if k == 0
                    % Coord is shared in the i direction
                    is_valid = false; return;
                elseif k == 2
                    % Coord is outside of geometry
                    is_valid = false; return;
                end
            case 3
                % i in the set 3, 7, 11, 15, ...
        end

end


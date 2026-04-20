function faces = face_builder(X_panels, Y_panels, coords)

% Helper function
get_idx = @(ii,jj,kk) find(coords(:,1)==ii & coords(:,2)==jj & coords(:,3)==kk, 1);

faces = [];

% Define maximum value of j & i
i_max = 2 * Y_panels - 1;
j_max = X_panels*3 - 1;


for j = 0:3:j_max-2
    for i = 0:1:i_max
        if mod (i,4) == 0
            if i == 0
                hinge_shifted_i = i ;
            else
                hinge_shifted_i = i - 1;
            end

            if mod(j,6) == 0
                % J index is shifted where hinges are shared (j > 0, k =1)
                if j == 0
                    hinge_shifted_j = j;
                else
                    hinge_shifted_j = j - 1;
                end
               faces = [faces; 
                    get_idx(i,hinge_shifted_j,1), get_idx(hinge_shifted_i,j,0), get_idx(hinge_shifted_i,j+1,0), get_idx(i,j+1,1) 
                    get_idx(i,j+1,1), get_idx(hinge_shifted_i,j+1,0), get_idx(hinge_shifted_i,j+2,0), get_idx(i,j+2,1)
                    get_idx(i,j+1,2), get_idx(i,j+1,1), get_idx(i,j+2,1), get_idx(i,j+2,2)
                ];
                
                faces = [faces;
                    get_idx(i,hinge_shifted_j,1), get_idx(hinge_shifted_i,j,0), get_idx(i+1,j,0), get_idx(i+1,hinge_shifted_j,1)
                    get_idx(i,j+1,2), get_idx(i,j+1,1), get_idx(i+1,hinge_shifted_j,1), get_idx(i+1,j,2)
                    get_idx(i,j+2,2), get_idx(i,j+1,2), get_idx(i+1,j,2), get_idx(i+1,j+1,2) 
                    get_idx(hinge_shifted_i,j+1,0), get_idx(hinge_shifted_i,j+2,0), get_idx(i+1,j+1,0), get_idx(i+1,j,0) 
                    get_idx(i,j+2,1), get_idx(hinge_shifted_i,j+2,0), get_idx(i+1,j+1,0), get_idx(i+1,j+1,1) 
                    get_idx(i+1,j+2,2), get_idx(i+1,j+2,1), get_idx(i,j+2,1), get_idx(i,j+2,2) 
                    get_idx(i,hinge_shifted_j,1), get_idx(i+1,hinge_shifted_j,1), get_idx(i,j+1,1), NaN 
                    get_idx(hinge_shifted_i,j,0), get_idx(i+1,j,0), get_idx(hinge_shifted_i,j+1,0), NaN 
                    get_idx(i+1,j+1,2), get_idx(i+1,j+2,2), get_idx(i,j+2,2), NaN 
                    get_idx(i+1,j+1,1), get_idx(i+1,j+2,1), get_idx(i,j+2,1), NaN 
                ];
            else
                faces = [faces; 
                    get_idx(hinge_shifted_i,j,2), get_idx(i,j-1,1), get_idx(i,j+1,1), get_idx(hinge_shifted_i,j+1,2)
                    get_idx(hinge_shifted_i,j+1,2), get_idx(i,j+1,1), get_idx(i,j+2,1), get_idx(hinge_shifted_i,j+2,2)
                    get_idx(i,j+1,1), get_idx(i,j+1,0), get_idx(i,j+2,0), get_idx(i,j+2,1)
                ];
                                
                faces = [faces;
                    get_idx(hinge_shifted_i,j,2), get_idx(i,j-1, 1), get_idx(i+1,j-1,1), get_idx(i+1,j,2)
                    get_idx(i,j+1,1), get_idx(i, j+1, 0), get_idx(i+1,j,0), get_idx(i+1,j-1,1)
                    get_idx(hinge_shifted_i,j+2,2), get_idx(hinge_shifted_i,j+1,2), get_idx(i+1,j,2), get_idx(i+1,j+1,2)
                    get_idx(i,j+2,0), get_idx(i,j+1,0), get_idx(i+1,j,0), get_idx(i+1,j+1,0)
                    get_idx(hinge_shifted_i,j+2,2), get_idx(i,j+2,1), get_idx(i+1,j+1,1), get_idx(i+1,j+1,2)
                    get_idx(i,j+2,1), get_idx(i,j+2,0), get_idx(i+1,j+2,0), get_idx(i+1,j+2,1)
                    get_idx(hinge_shifted_i,j+1,2), get_idx(hinge_shifted_i, j, 2), get_idx(i+1,j,2), NaN
                    get_idx(i,j+1,1), get_idx(i,j-1,1), get_idx(i+1,j-1,1), NaN
                    get_idx(i,j+2,1), get_idx(i+1,j+2,1), get_idx(i+1,j+1,1), NaN
                    get_idx(i,j+2,0), get_idx(i+1,j+2,0), get_idx(i+1,j+1,0), NaN

                ];
            end
            
        elseif mod(i,4) == 1
            if mod(j,6) == 0
                % J index is shifted where hinges are shared (j > 0, k =1)
                if j == 0
                    hinge_shifted_j = j;
                else
                    hinge_shifted_j = j - 1;
                end
                faces = [faces; 
    
                    get_idx(i,j,2), get_idx(i,hinge_shifted_j,1), get_idx(i,j+1,1), get_idx(i,j+1,2)
                    get_idx(i,hinge_shifted_j,1), get_idx(i,j,0), get_idx(i,j+1,0), get_idx(i,j+1,1)
                    get_idx(i,j+1,2), get_idx(i,j+1,1), get_idx(i,j+2,1), get_idx(i,j+2,2)
                ];
            else
                faces = [faces; 
                        get_idx(i,j,2), get_idx(i,j-1,1), get_idx(i,j+1,1), get_idx(i,j+1,2)
                        get_idx(i,j-1,1), get_idx(i,j,0), get_idx(i,j+1,0), get_idx(i,j+1,1)
                        get_idx(i,j+1,1), get_idx(i,j+1,0), get_idx(i,j+2,0), get_idx(i,j+2,1)
                ];
            end
        elseif mod(i,4) == 2
            if mod(j,6) == 0
                % J index is shifted where hinges are shared (j > 0, k =1)
                if j == 0
                    hinge_shifted_j = j;
                else
                    hinge_shifted_j = j - 1;
                end
                faces = [faces; 
                    get_idx(i-1,j,2), get_idx(i,hinge_shifted_j,1), get_idx(i,j+1,1), get_idx(i-1,j+1,2)
                    get_idx(i,hinge_shifted_j,1), get_idx(i,j,0), get_idx(i,j+1,0), get_idx(i,j+1,1)
                    get_idx(i-1,j+1,2), get_idx(i,j+1,1), get_idx(i,j+2,1), get_idx(i-1,j+2,2)
                ];

                faces = [faces;
                    get_idx(i,hinge_shifted_j,1), get_idx(i,j,0), get_idx(i+1,j,0), get_idx(i+1,hinge_shifted_j,1)
                    get_idx(i-1,j,2), get_idx(i,hinge_shifted_j,1), get_idx(i+1,j+1,1), get_idx(i+1,j+1,2)
                    get_idx(i-1,j,2), get_idx(i-1,j+1,2), get_idx(i+1,j+2,2), get_idx(i+1,j+1,2)
                    get_idx(i,j,0), get_idx(i,j+1,0), get_idx(i+1,j+2,0), get_idx(i+1,j+1,0)
                    get_idx(i,j+1,1), get_idx(i,j+1,0), get_idx(i+1,j+2,0), get_idx(i+1,j+2,1)
                    get_idx(i-1,j+2,2), get_idx(i,j+2,1), get_idx(i+1,j+2,1), get_idx(i+1,j+2,2)
                    get_idx(i,hinge_shifted_j,1), get_idx(i+1,hinge_shifted_j,1), get_idx(i+1,j+1,1) NaN
                    get_idx(i,j,0), get_idx(i+1,j,0), get_idx(i+1,j+1,0) NaN
                    get_idx(i-1,j+1,2), get_idx(i-1,j+2,2), get_idx(i+1,j+2,2) NaN
                    get_idx(i,j+1,1), get_idx(i,j+2,1), get_idx(i+1,j+2,1) NaN
                ];
            else
                faces = [faces; 
                    get_idx(i,j,2), get_idx(i,j-1,1), get_idx(i,j+1,1), get_idx(i,j+1,2)
                    get_idx(i,j-1,1), get_idx(i-1,j,0), get_idx(i-1,j+1,0), get_idx(i,j+1,1)
                    get_idx(i,j+1,1), get_idx(i-1,j+1,0), get_idx(i-1,j+2,0), get_idx(i,j+2,1)
                ];

                faces = [faces;
                    get_idx(i,j,2), get_idx(i,j-1,1), get_idx(i+1,j-1,1), get_idx(i+1,j,2)
                    get_idx(i,j-1,1), get_idx(i-1,j,0), get_idx(i+1,j+1,0), get_idx(i+1,j+1,1)
                    get_idx(i,j+1,2), get_idx(i,j,2), get_idx(i+1,j+1,2), get_idx(i+1,j+2,2)
                    get_idx(i-1,j+1,0), get_idx(i-1,j,0), get_idx(i+1,j+1,0), get_idx(i+1,j+2,0)
                    get_idx(i,j+1,2), get_idx(i,j+1,1), get_idx(i+1,j+2,1), get_idx(i+1,j+2,2)
                    get_idx(i,j+2,1), get_idx(i-1,j+2,0), get_idx(i+1,j+2,0), get_idx(i+1,j+2,1)

                    get_idx(i,j,2), get_idx(i+1,j,2), get_idx(i+1,j+1,2) NaN
                    get_idx(i,j-1,1), get_idx(i+1,j-1,1), get_idx(i+1,j+1,1) NaN
                    get_idx(i,j+1,1), get_idx(i+1,j+2,1), get_idx(i,j+2,1) NaN
                    get_idx(i-1,j+2,0), get_idx(i-1,j+1,0), get_idx(i+1,j+2,0) NaN
                ];
            end
        elseif mod(i,4) == 3
            if mod(j,6) == 0
                % J index is shifted where hinges are shared (j > 0, k =1)
                if j == 0
                    hinge_shifted_j = j;
                else
                    hinge_shifted_j = j - 1;
                end
                faces = [faces; 
                    get_idx(i,hinge_shifted_j,1), get_idx(i,j,0), get_idx(i,j+1,0), get_idx(i,j+1,1) 
                    get_idx(i,j+1,1), get_idx(i,j+1,0), get_idx(i,j+2,0), get_idx(i,j+2,1)
                    get_idx(i,j+1,2), get_idx(i,j+1,1), get_idx(i,j+2,1), get_idx(i,j+2,2)
                ];
            else
                faces = [faces; 
                    get_idx(i,j,2), get_idx(i,j-1,1), get_idx(i,j+1,1), get_idx(i,j+1,2)
                    get_idx(i,j+1,2), get_idx(i,j+1,1), get_idx(i,j+2,1), get_idx(i,j+2,2)
                    get_idx(i,j+1,1), get_idx(i,j+1,0), get_idx(i,j+2,0), get_idx(i,j+2,1)
                ];
            end
        end
    end    
end

%{
faces = [faces
    get_idx(0,0,1), get_idx(0,0,0), get_idx(1,0,0), get_idx(1,0,1)

    ];
%}

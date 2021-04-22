% sort the array 
function output = sort1DArray(input,direction,method)

% sort the array in ascending order or descending order
% use the algorithms introduced in C/C++ code
% direction: 'ascend', 'descend'
% method: 
% 1. 'selection': select the minimal/maximal value in the array/subarray and swap
% it with the value in the first position.
% 2. 'insertion': Removes an element from the unsorted array (right), inserting it into the correct position in the sorted list (left).
% 3. 'BubbleSort': swap and comparisons in Bubble sort

% Author Song Li
% 22.04.2021
% Contact: songli.hsh@gmail.com

output = input; % Default

    if(strcmp(direction,'ascend'))

       switch method
           case 'selection'
                for i = 1: length(input)-1
                    k = i; % search minimum location
                    % serach minimum
                    for j=i+1:length(input)

                        if(input(k)>input(j))
                            k=j;
                        end
                    end

                    % change position
                    a = input(i);
                    input(i) = input(k);
                    input(k) = a;
                end

           case 'insertion'

                for i = 2: length(input)

                    % input(i) is unsorted 
                    % input(j) is sorted
                    for j=1:i 
                        if(input(j)>input(i))
                            a = input(i);
                            for k = i:-1:j+1
                                input(k) = input(k-1);
                            end

                             input(j) = a;
                             break;
                        end
                    end

                end

           case 'BubbleSort' 
                for i = length(input)-1:-1:1

                    for j =1:i
                        if (input(j) > input(j+1)) 
                            a = input(j);
                            input(j) = input(j+1);
                            input(j+1) = a; 
                        end
                    end

                end

           otherwise
               input = [];

       end

       output = input;
    end


    if (strcmp(direction,'descend'))

       switch method
           case 'selection'
                for i = 1: length(input)-1
                    k = i; % search minimum location
                    % serach minimum
                    for j=i+1:length(input)

                        if(input(k)<input(j))
                            k=j;
                        end
                    end

                    % change position
                    a = input(i);
                    input(i) = input(k);
                    input(k) = a;
                end

           case 'insertion'

                for i = 2: length(input)

                    % input(i) is unsorted 
                    % input(j) is sorted
                    for j=1:i 
                        if(input(j)<input(i))
                            a = input(i);
                            for k = i:-1:j+1
                                input(k) = input(k-1);
                            end

                             input(j) = a;
                             break;
                        end
                    end

                end

           case 'BubbleSort' 
                for i = length(input)-1:-1:1

                    for j =1:i
                        if (input(j) < input(j+1)) 
                            a = input(j);
                            input(j) = input(j+1);
                            input(j+1) = a; 
                        end
                    end

                end

           otherwise
               input = [];

       end

       output = input;


    end

end
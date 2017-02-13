Z = [17, 24, 1, 8, 15; 23, 5, 7, 14, 16; 4, 6, 13, 20, 22; 10, 12, 19, 21, 3; 11, 18, 25, 2, 9]; % Setting up z

A = [Z(1:3,[1,3])]; % Taking the first 3 rows of the 1st and 3rd columns.
B = [Z(2,2:5)]; % Taking all of row 2.
C = [Z(3:4,3:4)]; % Taking the 3rd and 4th rows of the 3rd and 4th columns.
D = [Z([1,3,5],[1,3,5])]; % Taking the 1st, 3rd, and 5th row of the 1st, 3rd, and 5th column.

A % Displaying A so that you can see it
B % Displaying B so that you can see it
C % Displaying C so that you can see it
D % Displaying D so that you can see it
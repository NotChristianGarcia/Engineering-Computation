a = 2:4:30; % Setting up a
sz1 = size(a); % Checking the size of a
a % Displaying a so you can see it's contents

b = [a; a; a; a; a;]; % Setting up b
sz2 = size(b); % Checking the size of b
b % Displaying b so you can see it's contents

c = b(2:2:4,1:2:3); % Setting up c
sz3 = size(c); % Checking the size of c
c % Displaying c so you can see it's contents

d = a.*b(3,:); % Setting up d
sz4 = size(d); % Checking the size of d
d % Displaying d so you can see it's contents

w = [ones(3,1)' 2:5 zeros(1,3)]; % Setting up w
sz5 = size(w); % Checking the size of w
w % Displaying w so you can see it's contents

b(2,[1 3]) = b(2,[3 1]); % Setting up the new b
sz6 = size(b); % Checking the size of the new b
b % Displaying the new b so you can see it's new contents

e = 0:-2:5; % Setting up e
sz7 = size(e); % Checking the size of e
e % Displaying e so you can see it's contents
sz1, sz2, sz3, sz4, sz5, sz6, sz7
e = 1;
while (1 + e) > 1
    e = (e/2);
end
e = 2 * e;

fprintf('My program result is %d.\nThe eps function result is %d.\n',e,eps)
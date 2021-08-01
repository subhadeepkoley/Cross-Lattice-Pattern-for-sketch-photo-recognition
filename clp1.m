function E = sbp1(X)
I1 = [X(1, 1) X(2, 2) X(3, 3)];
dfI1 = I1(2:3) - I1(1:2);
binNum = num2str(dfI1 >= 0);
E = bin2dec(binNum);
end
function E = sbp2(X)
I1 = [X(1, 3) X(2, 2) X(3, 1)];
dfI1 = I1(2:3) - I1(1:2);
binNum = num2str(dfI1 >= 0);
E = bin2dec(binNum);
end
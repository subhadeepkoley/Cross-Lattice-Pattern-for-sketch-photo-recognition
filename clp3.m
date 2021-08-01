function E = sbp3(X)
I1 = [X(2, 1) X(2, 2) X(2, 3)];
dfI1 = I1(2:3) - I1(1:2);
binNum = num2str(dfI1 >= 0);
E = bin2dec(binNum);
end
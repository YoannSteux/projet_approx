function res = B(i,k,t, T)


if (k==0)
    if t>= T(i) && T(i+1) > t
        res = 1;
    else
        res = 0;
    end 
else
    % k >= 1
    %%%%%%%%%%%%%%%%%%%%%%%
    % /!\  0/0 == 0
    denom1 = T(i+k) - T(i);
    if denom1 == 0
        coef1 = 0;
    else
        coef1 = 1/denom1;
    end
    denom2 = T(i+k+1) - T(i+1);
    if denom2 == 0
        coef2 = 0;
    else
        coef2 = 1/denom2;
    end
    % calcul de N(i,k)
    
    res = coef1 * (t - T(i)) * B(i,k-1,t, T) + coef2 * (T(i+k+1) - t) * B(i+1,k-1,t, T);
    
end
end

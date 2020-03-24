function yt = f(t, y)
    global a b k m;
    % y = [phi theta phi_t theta_t]
    % yt = [phi_t theta_t phi_tt theta_tt]
    yt(1) = y(3);
    yt(2) = y(4);
    
    theta = y(2);
    phi_t = y(3);
    theta_t = y(4);
    
    yt(3) = -b^2*phi_t*theta_t*sin(2*theta)/(a^2 + b^2*sin(theta)^2) - k*phi_t/m;
    yt(4) = phi_t^2*sin(theta)*cos(theta) - k*theta_t/m;
    
    yt = yt';
end
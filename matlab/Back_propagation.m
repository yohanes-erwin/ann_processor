function [w2,w3,b2,b3] = Back_propagation(X,w2,w3,b2,b3,t,eta)  
    % Number of learning times (Iteration)  
    for j = 1:10000     
        C=0; dCdw2=0; dCdw3=0; dCdb2=0; dCdb3=0; 
        for i=1:size(X,2) % loop for sample data=4 
            % input -> hidden parameter 
            k = X(:,i); % insert input column by column 
            z2 = w2 * k + b2; % input weight for hidden layer         
            a2= 1./(1+exp(-z2)); % output for hidden layer         
            dadz2 = (1-a2).*a2;  % diff of a2 
                                 % (diff of sigmoid, da(z2)/dz)      
            % hidden -> output parameter 
            z3 = w3 * a2 + b3; % input weight for output layer         
            a3= 1./(1+exp(-z3)); % output for output layer         
            dadz3 = (1-a3).*a3;  % diff of a3 
                                 % (diff of sigmoid, da(z3)/dz)      
            % learning process of backpropagation 
            % Error determination         
            tx=t(:,i); 
            Q=sum((tx-a3).^2)/2; 
            C = C + Q; % square error              
            delta3 = (a3-tx) .* dadz3; % error func 
                                       % for output layer        
            delta2 = (w3.' * delta3).*dadz2;  % error func 
                                              % for hidden layer 

            % Derivation of Cost funtion       
            o = (a2 * (delta3).').'; 
            dCdw3 = dCdw3 + o; % Partial derivative of C 
                               % in w3 (dC/dw3 = sum(a2*delta3))         
            o = (k * (delta2).').'; 
            dCdw2 = dCdw2 +o ; % Partial derivative of C in w2 
                               % (dC/dw2 = sum(k*delta2)) 
            dCdb3 = dCdb3 + delta3; % Partial derivative of C  
                               % in b3 (dC/db3 = sum(delta3)) 
            dCdb2 = dCdb2 + delta2; % Partial derivative of C  
                               % in b2 (dC/db2 = sum(delta2))     
        end 
        % fprintf('%dth learning C = %g\n',j,C);     
        w2 = w2 - eta * dCdw2;     
        w3 = w3 - eta * dCdw3;     
        b2 = b2 - eta * dCdb2;     
        b3 = b3 - eta * dCdb3; 
    end  

% Result's display 
for i=1:size(X,2)                
    % Input : Hidden layer parameters 
    k = X(:,i);                  
    z2 = w2 * k + b2;                
    a2= 1./(1+exp(-z2));         
     
    % Intermediate : output layer parameters
    z3 = w3 * a2 + b3;               
    a3= 1./(1+exp(-z3));   
end 
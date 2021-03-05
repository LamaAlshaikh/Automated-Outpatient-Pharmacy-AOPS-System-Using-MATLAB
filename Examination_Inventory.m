function Examination_Inventory(A_Quantity,B_Quantity,C_Quantity,D_Quantity)
%This function used to give notification about the medicines that 
%ran/will run out of stock 
disp('  ') %empty line

%Check Medicine A
if A_Quantity <= 2 & A_Quantity >= 1 
fprintf('The A medicine will run out of stock\n')
elseif A_Quantity==0
fprintf('The A medicine is out of stock\n') 
end

%Check Medicine A
if B_Quantity < 2 & B_Quantity >= 1 
fprintf('The B medicine will run out of stock\n')
elseif B_Quantity==0
fprintf('The B medicine is out of stock\n') 
end

%Check Medicine A
if C_Quantity <= 2 & C_Quantity >= 1 
fprintf('The C medicine will run out of stock\n')
elseif C_Quantity==0
fprintf('The C Medicine is out of stock\n') 
end

%Check Medicine A
if D_Quantity <= 2 & D_Quantity >= 1 
fprintf('The D Medicine will run out of stock\n')
elseif D_Quantity==0
fprintf('The D Medicine is out of stock\n') 
end
disp('  ')%empty line
end %end function
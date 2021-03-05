%%  Creat database of the Pharmacy & Clibrate the robotic arm
syms A B C D 
ID_00=[A,B,C];   %Prescreption of first patient ID=00
ID_01=[B,C,D];   %Prescreption of first patient ID=00
ID_10=[A,A,B];   %Prescreption of first patient ID=00
ID_11=[B,C,D,D]; %Prescreption pf first patient ID=00

%(1 means full, O means empty)
storage=[0 0 0 0 0 0 0 1;1 1 0 0 1 1 1 1];  %Intial Storage data 


%Print State of Each Components
fprintf('The robotic arm calibrate, so it is in the initial position \n')
fprintf('Robotic Arm Joints Angle Values (degree): J1=J2=J3=J4=0 \nLength of sliding rail: L=0mm \n')
fprintf('Conveyor Belt is Close\n')
fprintf('The system reads the database\n')

%Plot storage 
A_Quantity=storage(1,1)+storage(1,2)+storage(2,1)+storage(2,2); %Quantity of Medicine A
B_Quantity=storage(1,3)+storage(1,4)+storage(2,3)+storage(2,4); %Quantity of Medicine B
C_Quantity=storage(1,5)+storage(1,6)+storage(2,5)+storage(2,6); %Quantity of Medicine C
D_Quantity=storage(1,7)+storage(1,8)+storage(2,7)+storage(2,8); %Quantity of Medicine D

x=[A_Quantity B_Quantity C_Quantity D_Quantity];  %Intiate an array
c = categorical({'A','B','C','D'});               %create name of bars
bar(c,x);                                         %polt graph to show storage
title('Medicines Inventory'); xlabel('Medicines Types');ylabel('Quantity (pieces)');
ylim([0 4])          %Maximum Storage is 4, Mimimum Storage 0
set(gca,'ytick',0:4) %Show only integer Value of Quantity

%examine inventory
Examination_Inventory(A_Quantity,B_Quantity,C_Quantity,D_Quantity)%examine the stock

%% Inventory and Dispensing Process
 syms A B C D Patient Medicine  %define medicines and variables 
 
 %Let user choose either Inventory or Dispensing Process.
 Choice= menu('Do you Want Inventory or Dispensing Process?','Inventory','Dispensing');
 
 
 if Choice==1 %Inventory Process

%First of all, pharmacist placed medicines in conveyor belt 
fprintf('Pharmacy technician placed medicines on conveyor belt \n')  

%First IR sensor
fprintf('The first IR sensor detect medicine and activate the conveyor belt\n')

%Second IR sensor
fprintf('The second IR sensor detect medicine and stops the conveyor belt\n')

%Barcode Reader
fprintf('The barcode reader reads the barcode\n')

disp('  ')%empty line

%Ask the user to enter the serial number of of the medicine
%In realitym the barcode reader will do this job.
Medicine_Type=input('Enter the serial number of medicine with [ ] around them:  ');
disp('  ')%empty line
%Ask user to reanswer medicine serial number, if it was wrong
while Medicine_Type~=A & Medicine_Type~=B & Medicine_Type~=C & Medicine_Type~=D
   Medicine_Type=input('Enter the serial number of medicine with [ ] around them:  :  ');
end
%use Medicine_Inventory function
[storage]=Medicine_Inventory(Medicine_Type,storage);

%examine inventory
A_Quantity=storage(1,1)+storage(1,2)+storage(2,1)+storage(2,2); %Quantity of Medicine A
B_Quantity=storage(1,3)+storage(1,4)+storage(2,3)+storage(2,4); %Quantity of Medicine B
C_Quantity=storage(1,5)+storage(1,6)+storage(2,5)+storage(2,6); %Quantity of Medicine C
D_Quantity=storage(1,7)+storage(1,8)+storage(2,7)+storage(2,8); %Quantity of Medicine D
Examination_Inventory(A_Quantity,B_Quantity,C_Quantity,D_Quantity)%examine the stock

 else %Dispensing Process
     
%Input Patient ID or Medicine ID
Input_D=menu('Do you want a specific patient prescription or medicine serial number?','Patient','Medicine');

%If input is patient ID
if Input_D==1 
    
%   Ask User to enter patient ID
Patient_ID=input('Enter the ID of the patient:  ');
disp('  ')
%Ask the user to repeat the ID if it is not correct
while Patient_ID~=00 & Patient_ID~=01 & Patient_ID~=10 & Patient_ID~=11
fprintf('The ID is not correct \n')
Patient_ID = input('Enter the ID of the patient');
end

switch Patient_ID
    
% First Patient ID
case 00
    %use Patient_Dispensing function
[ID_00,storage]=Patient_Dispensing(ID_00,storage);

% Second PatientID
case 01
    %use Patient_Dispensing function
[ID_01,storage]=Patient_Dispensing(ID_01,storage);


%Third Patient ID
case 10
    %use Patient_Dispensing function
[ID_10,storage]=Patient_Dispensing(ID_10,storage);


%Fourth Patient ID
case 11
    %use Patient_Dispensing function
[ID_11,storage]=Patient_Dispensing(ID_11,storage);

end %end cases

%examine inventory
A_Quantity=storage(1,1)+storage(1,2)+storage(2,1)+storage(2,2); %Quantity of Medicine A
B_Quantity=storage(1,3)+storage(1,4)+storage(2,3)+storage(2,4); %Quantity of Medicine B
C_Quantity=storage(1,5)+storage(1,6)+storage(2,5)+storage(2,6); %Quantity of Medicine C
D_Quantity=storage(1,7)+storage(1,8)+storage(2,7)+storage(2,8); %Quantity of Medicine D
Examination_Inventory(A_Quantity,B_Quantity,C_Quantity,D_Quantity)%examine the stock

%If input is Medicine ID
elseif Input_D== 2
    
    
 %Ask User to enter Medicine ID
Medicine_Serial_Number=input('Enter the ID of the medicine with [ ] around them:  ');
disp(' ')%empty line
%   Ask th user to reenter Medicine ID if it is not correct
while Medicine_Serial_Number~=A & Medicine_Serial_Number~=B & Medicine_Serial_Number~=C & Medicine_Serial_Number~=D
fprintf('The serial number of the medicine is not correct \n')
Medicine_Serial_Number = input('Enter the ID of the medicine with [ ] around them:  ');
end

%use edicine_Dispensing function
[storage]=Medicine_Dispensing( Medicine_Serial_Number,storage);

%examine the stock
A_Quantity=storage(1,1)+storage(1,2)+storage(2,1)+storage(2,2); %Quantity of Medicine A
B_Quantity=storage(1,3)+storage(1,4)+storage(2,3)+storage(2,4); %Quantity of Medicine B
C_Quantity=storage(1,5)+storage(1,6)+storage(2,5)+storage(2,6); %Quantity of Medicine C
D_Quantity=storage(1,7)+storage(1,8)+storage(2,7)+storage(2,8); %Quantity of Medicine D
Examination_Inventory(A_Quantity,B_Quantity,C_Quantity,D_Quantity)
 end
 end   

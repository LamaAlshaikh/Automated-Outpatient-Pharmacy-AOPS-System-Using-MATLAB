%User-defined function for dispensing process (Input is Medicine ID). 
%This function guides the robot to read the medicines type, grab the nearest
%medicine, and update the storage. also, it will control conveyor belt, 
%robotic arm, and sliding rail movement based on the sensors reading.ng.
function [NEW_Storage]=Medicine_Dispensing(Medicine_Serial_Number,storage)
 syms A B C D %defince ID of medicines
for i = 1:length(Medicine_Serial_Number) % Loop index to run as many cells in the

%If statement to search for the nearest medicine.

if Medicine_Serial_Number(i)==A %If the prescreption has A medicine,
    if storage(1,1)==1         %Search in the first cell
    storage(1,1)=0;            %update the storage
    fprintf('Robotic Arm  on %s Medicin Location; cell number(1,1)\n',Medicine_Serial_Number(i))
    fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39,and J4= 16.486 \nLength of sliding rail: L= 895.238mm \n')
    fprintf('Gripper grasp the medicine (0)  \n')
        elseif storage(1,2)==1
        storage(1,2)=0;       
        fprintf('Robotic Arm  on %s Medicin Location; cell number(1,2) \n',Medicine_Serial_Number(i))
        fprintf('Robotic Arm Joints Angle  Values(degree): J1= 0.2647 J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 793.122mm \n')
        fprintf('Gripper grasp the medicine (0)  \n')
            elseif storage(2,2)==1  
            storage(2,2)=0;         
            fprintf('Robotic Arm  on %s Medicin Location; cell number(2,2)\n',Medicine_Serial_Number(i))
            fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 793.122mm \n')
            fprintf('Gripper grasp the medicine (0)  \n')
                elseif storage(2,1)==1  
                storage(2,1)=0;         
                fprintf('Robotic Arm  on %s Medicin Location; cell number(2,1)\n',Medicine_Serial_Number(i))
                fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 895.238mm \n')
                fprintf('Gripper grasp the medicine (0)  \n')
    else 
%Give notification to the user indicate that this medicine is out of stock 
fprintf('The %s Medicine is out of stock\n',Medicine_Serial_Number(i))
disp('')  %empty line
continue  %break this iteration of for loop, since the medicine is out of stock.
    end   %end of if statement (if storage(1,1)==1)
    
elseif Medicine_Serial_Number(i)==B   %If the prescreption has B medicine,
    if storage(1,3)==1
    storage(1,3)=0;
    fprintf('Robotic Arm  on %s Medicin Location; cell number(1,3)\n',Medicine_Serial_Number(i))
    fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4=16.486 \nLength of sliding rail: L= 656.9mm \n')
    fprintf('Gripper grasp the medicine (0)  \n')
    elseif storage(1,4)==1
    storage(1,4)=0;
    fprintf('Robotic Arm  on %s Medicin Location; cell number(1,4) \n',Medicine_Serial_Number(i))
    fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4=16.486 \nLength of sliding rail: L= 538.61mm \n')
    fprintf('Gripper grasp the medicine (0)  \n')
        elseif storage(2,4)==1
        storage(2,4)=0;
        fprintf('Robotic Arm  on %s Medicin Location; cell number(2,4)\n',Medicine_Serial_Number(i))
        fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 538.61mm \n')
        fprintf('Gripper grasp the medicine (0)  \n')
            elseif storage(2,3)==1
            storage(2,3)=0;
            fprintf('Robotic Arm  on %s Medicin Location; cell number(2,3)\n',Medicine_Serial_Number(i))
            fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 656.9mm \n')
            fprintf('Gripper grasp the medicine (0)  \n')
else 
fprintf('The %s Medicine is out of stock\n',Medicine_Serial_Number(i))
disp('')  %empty line
continue  %break this iteration of for loop, since the medicine is out of stock.
    end   %end of if statement (if storage(1,3)==1)
 
elseif Medicine_Serial_Number(i)==C    %If the prescreption has C medicine,
    if storage(1,5)==1
    storage(1,5)=0;
    fprintf('Robotic Arm  on %s Medicin Location; cell number(1,5)\n',Medicine_Serial_Number(i))
    fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 418.03mm \n')
    fprintf('Gripper grasp the medicine (0)  \n')
        elseif storage(1,6)==1
        storage(1,6)=0;
        fprintf('Robotic Arm  on %s Medicin Location; cell number(1,6) \n',Medicine_Serial_Number(i))
        fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 289.46mm \n')
        fprintf('Gripper grasp the medicine (0)  \n')
            elseif storage(2,6)==1
            storage(2,6)=0;
            fprintf('Robotic Arm  on %s Medicin  Location; cell number(2,6)\n',Medicine_Serial_Number(i))
            fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 289.46mm \n')
            fprintf('Gripper grasp the medicine  \n')
                elseif storage(2,5)==1
                storage(2,5)=0;
                fprintf('Robotic Arm  on %s Medicin  Location; cell number(2,5)\n',Medicine_Serial_Number(i))
                fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 418.03mm \n')
                fprintf('Gripper grasp the medicine (0)  \n')
else 
fprintf('The %s Medicine is out of stock\n',Medicine_Serial_Number(i)) 
disp('')  %empty line
continue  %break this iteration of for loop, since the medicine is out of stock.
    end   %end of if statement (if storage(1,5)==1)
 
 
elseif Medicine_Serial_Number(i)==D     %If the prescreption has D medicine,
    if storage(1,7)==1
    storage(1,7)=0;
    fprintf('Robotic Arm  on %s Medicin Location; cell number(1,7)\n',Medicine_Serial_Number(i))
    fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 164.32mm \n')
    fprintf('Gripper grasp the medicine (0)  \n')
        elseif storage(1,8)==1
        storage(1,8)=0;
        fprintf('Robotic Arm  on %s Medicin Location; cell number(1,8) \n',Medicine_Serial_Number(i))
        fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 46.4 mm \n')
        fprintf('Gripper grasp the medicine (0)  \n')
            elseif storage(2,8)==1
            storage(2,8)=0;
            fprintf('Robotic Arm  on %s Medicin Location; cell number(2,8)\n',Medicine_Serial_Number(i))
            fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 46.4 mm \n')
            fprintf('Gripper grasp the medicine (0)\n')
            elseif storage(2,7)==1
                storage(2,7)=0;
                fprintf('Robotic Arm  on %s Medicin Location; cell number(2,7)\n',Medicine_Serial_Number(i))
                fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 164.32mm \n')
                fprintf('Gripper grasp the medicine (0)  \n')
else 
fprintf('The %s Medicine is out of stock\n',Medicine_Serial_Number(i))
disp('')%empty line
continue %break this iteration of for loop, since the medicine is out of stock.
    end %end of if statement (if storage(1,7)==1)
end     %end of if statement (if Medicine_Serial_Number(i)==A)

%Continue the rest process

%place medicine on the conveyor belt to dilver it to the despinsing window.
fprintf('Robotic Arm on the conveyor belt \n') 
fprintf('Robotic Arm Joints Angle  Values (degree): J1= 86.903, J2= 71.9, J3= 42.87, and J4= 16.48 \nLength of sliding rail: L= 0mm \n')
%Gripper release the medicine on the conveyor belt
fprintf('Gripper release the medicine (1) \n')

%First IR sensor
fprintf('The first IR sensor detect medicine and activate the conveyor belt\n')

%Second IR sensor
fprintf('The second IR sensor detect medicine and stops the conveyor belt\n')

%Barcode Reader
fprintf('The barcode reader reads the barcode\n')

%Create a random variable for successful scan.
n = 1; 
successfully_scanned = int32(randi([0, 1], [1, n]));

%Creat a random varible for Scan 
Matched_Scan = int32(randi([0, 1], [1, n]));

%Check the scan (o false, 1 correct)
if successfully_scanned==0
    
%the conveyor belt move backward to push the medicine to the review box
    fprintf('The barcode failed to read \n')
    fprintf('The conveyor belt moves backward to the review box\n')
else 
if  Matched_Scan==0
%the conveyor belt move backward to push the medicine to the review box
    fprintf('The barcode does not match the ordered medicine \n')
    fprintf('The conveyor belt moves backward to the review box\n')
else
%the conveyor belt move forward to deliver the medicine to the dispinsing
%window
    fprintf('The conveyor belt moves forward to the dispinsing window\n')
    fprintf('%s Medicin  has been recieved\n',Medicine_Serial_Number(i))
end %end of inner if
end %end of outer if
disp(' ')%empty line
end % end of for loop

%Plot Storage
A_Quantity=storage(1,1)+storage(1,2)+storage(2,1)+storage(2,2); %Quantity of Medicine A
B_Quantity=storage(1,3)+storage(1,4)+storage(2,3)+storage(2,4); %Quantity of Medicine B
C_Quantity=storage(1,5)+storage(1,6)+storage(2,5)+storage(2,6); %Quantity of Medicine C
D_Quantity=storage(1,7)+storage(1,8)+storage(2,7)+storage(2,8); %Quantity of Medicine D

x=[A_Quantity B_Quantity C_Quantity D_Quantity];%Intiate an array
c = categorical({'A','B','C','D'});            %create name of bars
bar(c,x)                                       %polt graph to show storage
title('Storage'); xlabel('Medicine Type');ylabel('Quantity (pieces)')
ylim([0 4])          %Maximum Storage is 4, Mimimum Storage 0
set(gca,'ytick',0:4) %Show only integer Value of Storage

NEW_Storage=storage;  %Update the storage data
end % end of function

 

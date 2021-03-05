%User-defined function for inventory process (Input is Medicine serial number).
%This function guides the robot to read the medicines type, grasp the medicine
%from conveyor belt, store medicine in the farthest place, and update the storage. 
%Also, it will control conveyor belt, robotic arm, and sliding rail movement 
%based on the sensors reading.

function [NEW_Storage]=Medicine_Inventory(Medicine_ID,storage)
 syms A B C D %defince ID of medicines

for i = 1:length(Medicine_ID) % Loop index to run as many cells in the
 
%Create a random variable for successful scan.
n = 1; 
successful_Scan = int32(randi([0, 1], [1, n]));

%Create a random variable for predefined scan. 
predifined_Scan= int32(randi([0, 1], [1, n]));

%Check the scan (o failed to scan, 1 successfuly scanned)
if successful_Scan==0
    
%The conveyor belt moves backward to push the medicine to the review box
    fprintf('The barcode failed to read \n')
    fprintf('Conveyor belt moves forward to the review box\n')
    disp('  ')
    continue
else 
%Check the scan (0 new barcode,1 predefined barcode)
  if predifined_Scan ==0
%If the barode is not predifined 
%The conveyor belt moves backward to push the medicine to the review box
    fprintf('The barcode is not predefined \n')
    fprintf('Conveyor belt moves forward to the review box\n')
    disp('  ')
    continue
  
  else
   
%If statement to search for the farest empty space.

if Medicine_ID(i)==A           %If the prescreption has A medicine,
    if storage(2,1)==0         %Search in the first cell
    storage(2,1)=1;            %update the storage
    %Call the Robotic Arm to grab the medicine from the conveyor belt
    disp(' ')
    fprintf('Robotic arm moves to the conveyor belt\n')
    fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=1000mm \n')
    fprintf('Gripper grasp the medicine (0)  \n')
    fprintf('Robotic Arm on Medicin %s Location; cell number(2,1)\n',Medicine_ID(i))
    fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 895.238mm \n')
    fprintf('Gripper release the medicine (1) \n')
    disp(' ')
        elseif storage(2,2)==0  %Search in the second cell
        storage(2,2)=1;         %update the storage
        %Call the Robotic Arm to grab the medicine from the conveyor belt
        disp('')
        fprintf('Robotic arm moves to the conveyor belt\n')
        fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
        fprintf('Gripper grasp the medicine (0)  \n')
        fprintf('Robotic Arm on Medicin %s Location; cell number(2,2) \n',Medicine_ID(i))
        fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 793.122mm \n')
        fprintf('Gripper release the medicine (1)  \n')
        disp('  ')
            elseif storage(1,2)==0   %Search in the third cell
            storage(1,2)=1;          %update the storage
            %Call the Robotic Arm to grab the medicine from the conveyor belt
            disp(' ')
            fprintf('Robotic arm moves to the conveyor belt\n')
            fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
            fprintf('Gripper grasp the medicine (0)  \n')
            fprintf('Robotic Arm  on Medicin %s Location; cell number(1,2)\n',Medicine_ID(i))
            fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 793.122mm  \n')
            fprintf('Gripper release the medicine (1)  \n')
            disp(' ')
                elseif storage(1,1)==0  %Search in the last cell
                storage(1,1)=1;         %update the storage
                %Call the Robotic Arm to grab the medicine from the conveyor belt
                disp(' ')
                fprintf('Robotic arm moves to the conveyor belt\n')
                fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
                fprintf('Gripper grasp the medicine (0)  \n')
                fprintf('Robotic Arm  on Medicin %s Location; cell number(1,1)\n',Medicine_ID(i))
                fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 895.238mm \n')
                fprintf('Gripper release the medicine (1)  \n')
                disp(' ')
else 
%Give notification to the user indicate that this medicine is out of stock 
fprintf('Full stock of %s Medicine \n',Medicine_ID(i))
%The conveyor belt moves backward to push the medicine to the review box
fprintf('Conveyor belt moves forward to the review box\n')
disp('  ')
continue
    end
    
elseif Medicine_ID(i)==B   %If the prescreption has B medicine,
    if storage(2,3)==0
    storage(2,3)=1;
    %Call the Robotic Arm to grab the medicine from the conveyor belt
    disp(' ')
    fprintf('Robotic arm moves to the conveyor belt\n')
    fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
    fprintf('Gripper grasp the medicine (0)  \n')
    fprintf('Robotic Arm  on Medicin %s Location; cell number(2,3)\n',Medicine_ID(i))
    fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 656.9mm \n')
    fprintf('Gripper release the medicine (1)  \n')
    disp(' ')
        elseif storage(2,4)==0
        storage(2,4)=1;
        %Call the Robotic Arm to grab the medicine from the conveyor belt
        disp(' ')
        fprintf('Robotic arm moves to the conveyor belt\n')
        fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
        fprintf('Gripper grasp the medicine (0)  \n')
        fprintf('Robotic Arm  on Medicin %s Location; cell number(2,4) \n',Medicine_ID(i))
        fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 538.61mm \n')
        fprintf('Gripper release the medicine (1)  \n')
        disp(' ')
            elseif storage(1,4)==0
            storage(1,4)=1;
            %Call the Robotic Arm to grab the medicine from the conveyor belt
            disp('')
            fprintf('Robotic arm moves to the conveyor belt\n')
            fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
            fprintf('Gripper grasp the medicine (0)  \n')
            fprintf('Robotic Arm  on Medicin %s Location; cell number(1,4)\n',Medicine_ID(i))
            fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 538.61mm \n')
            fprintf('Gripper release the medicine (1)  \n')
            disp('')
                elseif storage(1,3)==0
                storage(1,3)=1;
                %Call the Robotic Arm to grab the medicine from the conveyor belt
                disp('')
                fprintf('Robotic arm moves to the conveyor belt\n')
                fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
                fprintf('Gripper grasp the medicine (0)\n')
                fprintf('Robotic Arm  on Medicin %s Location; cell number(1,3)\n',Medicine_ID(i))
                fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 656.9mm \n')
                fprintf('Gripper release the medicine (1)  \n')
                disp('')
else 
fprintf('Full stock of %s Medicine \n',Medicine_ID(i))
%The conveyor belt moves backward to push the medicine to the review box
fprintf('Conveyor belt moves forward to the review box\n')
disp(' ')
continue
    end
 
elseif Medicine_ID(i)==C    %If the prescreption has C medicine,
    if storage(2,5)==0
    storage(2,5)=1;
    %Call the Robotic Arm to grab the medicine from the conveyor belt
    disp(' ')
    fprintf('Robotic arm moves to the conveyor belt\n')
    fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
    fprintf('Gripper grasp the medicine (0)  \n')
    fprintf('Robotic Arm  on Medicin %s Location; cell number(2,5)\n',Medicine_ID(i))
    fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 418.03mm \n')
    fprintf('Gripper release the medicine (1)\n')
    disp(' ')
        elseif storage(2,6)==0
        storage(2,6)=1;
        %Call the Robotic Arm to grab the medicine from the conveyor belt
        disp('')
        fprintf('Robotic arm moves to the conveyor belt\n')
        fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
        fprintf('Gripper grasp the medicine (0)  \n')
        fprintf('Robotic Arm  on Medicin %s Location; cell number(2,6) \n',Medicine_ID(i))
        fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 289.46mm \n')
        fprintf('Gripper release the medicine (1) \n')
        disp('')
            elseif storage(1,6)==0
            storage(1,6)=1;
            %Call the Robotic Arm to grab the medicine from the conveyor belt
            disp('')
            fprintf('Robotic arm moves to the conveyor belt\n')
            fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
            fprintf('Gripper grasp the medicine (0)  \n')
            fprintf('Robotic Arm  on Medicin %s Location; cell number(1,6)\n',Medicine_ID(i))
            fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, and J4= 16.486 \nLength of sliding rail: L= 289.46mm \n')
            fprintf('Gripper release the medicine (1)  \n')
            disp('')
                elseif storage(1,5)==0
                storage(1,5)=1;
                %Call the Robotic Arm to grab the medicine from the conveyor belt
                disp('')
                fprintf('Robotic arm moves to the conveyor belt\n')
                fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
                fprintf('Gripper grasp the medicine (0)  \n')
                fprintf('Robotic Arm  on Medicin %s Location; cell number(1,5)\n',Medicine_ID(i))
                fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, J4= 16.486 \nLength of sliding rail: L= 418.03mm \n')
                fprintf('Gripper release the medicine (1)  \n')
                disp('')
else 
fprintf('Full stock of %s Medicine \n',Medicine_ID(i)) 
%The conveyor belt moves backward to push the medicine to the review box
fprintf('Conveyor belt moves forward to the review box\n')
disp(' ')
continue
    end
 
 
elseif Medicine_ID(i)==D     %If the prescreption has D medicine,
    if storage(2,7)==0
    storage(2,7)=1;
    %Call the Robotic Arm to grab the medicine from the conveyor belt
    disp(' ')
    fprintf('Robotic arm moves to the conveyor belt\n')
    fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
    fprintf('Gripper grasp the medicine (0)  \n')
    fprintf('Robotic Arm  on Medicin %s Location; cell number(2,7)\n',Medicine_ID(i))
    fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 164.32mm \n')
    fprintf('Gripper release the medicine (1)  \n')
    disp(' ')
        elseif storage(2,8)==0
        storage(2,8)=1;
        %Call the Robotic Arm to grab the medicine from the conveyor belt
        disp(' ')
        fprintf('Robotic arm moves to the conveyor belt\n')
        fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
        fprintf('Gripper grasp the medicine (0)  \n')
        fprintf('Robotic Arm  on Medicin %s Location; cell number(2,8) \n',Medicine_ID(i))
        fprintf('Robotic Arm Joints Angle  Values (degree): J1=- 0.45, J2= 86.98, J3= 44.1, and J4= 16.4 \nLength of sliding rail: L= 46.4mm \n')
        fprintf('Gripper release the medicine (1)  \n')
         disp(' ')
            elseif storage(1,8)==0
            storage(1,8)=1;
            %Call the Robotic Arm to grab the medicine from the conveyor belt
            disp(' ')
            fprintf('Robotic arm moves to the conveyor belt\n')
            fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
            fprintf('Gripper grasp the medicine (0) \n')
            fprintf('Robotic Arm  on Medicin %s Location; cell number(1,8)\n',Medicine_ID(i))
            fprintf('Robotic Arm Joints Angle  Values (degree): J1= 0.2647, J2= 67.38, J3= 85.39, J4= 16.486 \nLength of sliding rail: L= 46.4mm \n')
            fprintf('Gripper release the medicine (1)  \n')
            disp(' ')
                elseif storage(1,7)==0
                storage(1,7)=1;
                %Call the Robotic Arm to grab the medicine from the conveyor belt
                disp(' ')
                fprintf('Robotic arm moves to the conveyor belt\n')
                fprintf('Robotic Arm Joints Angle  Values (degree): J1=-90.05, J2=55.8, J3=62.5, and J4=44.61\nLength of sliding rail: L=10000mm \n')
                fprintf('Gripper grasp the medicine (0)  \n')
                fprintf('Robotic Arm  on Medicin %s Location; cell number(1,7)\n',Medicine_ID(i))
                fprintf('Robotic Arm Joints Angle  Values (degree): J1= 67.38, J2=55.8, J3= 85.39, J4= 16.486 \nLength of sliding rail: L= 164.32mm \n')
                fprintf('Gripper release the medicine (1) \n')
                disp(' ')
else 
fprintf('Full stock of %s Medicine \n',Medicine_ID(i))
%The conveyor belt moves backward to push the medicine to the review box
fprintf('Conveyor belt moves forward to the review box\n')
disp('  ')
continue
    end 
end  %end if (Medicine serial & empty space)
end % inner of (predefined)  
end %outer if (Successfully scan)
disp('  ') %empty line
end  %end loop

%Plot Storage
NEW_Storage=storage; %Update the storage data

A_Quantity=storage(1,1)+storage(1,2)+storage(2,1)+storage(2,2); %Quantity of Medicine A
B_Quantity=storage(1,3)+storage(1,4)+storage(2,3)+storage(2,4); %Quantity of Medicine B
C_Quantity=storage(1,5)+storage(1,6)+storage(2,5)+storage(2,6); %Quantity of Medicine C
D_Quantity=storage(1,7)+storage(1,8)+storage(2,7)+storage(2,8); %Quantity of Medicine D

x=[A_Quantity B_Quantity C_Quantity D_Quantity];%Intiate an array
c = categorical({'A','B','C','D'});            %create name of bars
bar(c,x)                                       %polt graph to show storage
title('Medicine Inventory'); xlabel('Medicine Type');ylabel('Quantity (pieces)')
ylim([0 4]);          %Maximum Storage is 4, Mimimum Storage 0
set(gca,'ytick',0:4); %Show only integer Value of Storage


end  %end function

 

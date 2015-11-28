function [ facepoints ] = loadmuct76()
%loadmuct76() loads the data from muct76.csv IF IT EXISTS
%   Input: None
%   Output:
%      data: a struct containing both the names and the data for images

if(nargin~=0)
    error('Incorrect syntax! Type "help loadmuct76() for information."');
end
if exist('muct-landmarks/muct76.csv', 'file')
    facepoints=importdata('muct-landmarks/muct76.csv');
    facepoints.textdata=facepoints.textdata(2:end, 1); %remove clutter
    facepoints.data=facepoints.data(:, 2:end); %remove clutter
else
   error('muct76.csv not found! Aborting.');
end

%Parse through list of files, and check to see if they exist
%If they don't, we delete them and their corresponding elements
k=1;
while k~=length(facepoints.textdata)+1 %can use length b/c it is a vector
    if ~(exist(strcat('jpg/',char(facepoints.textdata(k)),'.jpg'), 'file'))
        facepoints.textdata(k)=[];
        facepoints.data(k,:)=[]; %remove row, MATLAB automagically moves the rest of the matrix up, so we do not increment
    else
        k=k+1; %it exists, move to next row
    end
end

end
trainInputFile = fopen('..\\result\\bpTrainInput.txt', 'rt');
inputData = textscan(trainInputFile, '%f %f %f %f %f');
fclose(trainInputFile);
x = transpose(cell2mat(inputData));
trainTargetFile = fopen('..\\result\\bpTrainTarget.txt', 'rt');
targetData = textscan(trainTargetFile, '%f %f');
fclose(trainTargetFile);
t = transpose(cell2mat(targetData));

% Create a Fitting Network
hiddenLayerSize = [12, 12];
net = fitnet(hiddenLayerSize);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% unset process function
net.inputs{1}.processFcns = {};
net.outputs{3}.processFcns = {};

% Train the Network
[net,tr] = train(net,x,t);

% Test the Network
y = net(x);
e = gsubtract(t,y);
performance = perform(net,t,y)

dlmwrite('..\\result\\IW.txt', net.IW{1});
dlmwrite('..\\result\\LW1.txt', net.LW{2});
dlmwrite('..\\result\\LW2.txt', net.LW{6});
dlmwrite('..\\result\\B1.txt', net.B{1});
dlmwrite('..\\result\\B2.txt', net.B{2});
dlmwrite('..\\result\\B3.txt', net.B{3});
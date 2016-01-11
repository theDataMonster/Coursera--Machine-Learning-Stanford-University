function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
%c1=[0.01,0.03,0.1,0.3,1,3,10,30];
%s1=[0.01,0.03,0.1,0.3,1,3,10,30];
%double pred=zeros(200,1);
%double error=zeros(8,8);
%x1 = [1 2 1]; x2 = [0 4 -1];
%pred=svmPredict( svmTrain(Xval, yval, C, @(x1, x2) gaussianKernel(x1, x2, sigma)) , Xval);
%        error(1,1)=mean(double(pred ~= yval));
%        double min1;
%        min1=error(1,1);
%for i=1:8
%    for j=1:8
%        pred=svmPredict( svmTrain(Xval, yval, c1(i), @(x1, x2) gaussianKernel(x1, x2, s1(j)),1e-5) , Xval);
%        error(i,j)=mean(double(pred ~= yval));
%        if(min1>error(i,j))

%            min1=error(i,j);
%            C=c1(i);
%            sigma=s1(j);
%            model=svmTrain(Xval, yval, c1(i), @(x1, x2) gaussianKernel(x1, x2, s1(j)),1e-5);
%        end  
        
%    end;
%end;
%C
%sigma
%error
% =========================================================================

model = svmTrain(X, y, C, @linearKernel, 1e-3, 20);
end

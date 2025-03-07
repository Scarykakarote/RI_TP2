function AAA = CalculateRobotMotion(MDH)
% MDH - Hypermatrix : 4 x 4 x numjuntas
%     Calculated with GenerateMultiDH
% AAA - Hypermatrix
%     Full history of robot positions

AAA = zeros(4, 4, size(MDH,1),size(MDH,3));

for n = 1:size(MDH,3)
    AAA(:,:,:,n) = Tlinks(MDH(:,:,n));
end
end
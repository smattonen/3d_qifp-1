function [ out ] = run( inputs )
%RUN Summary of this function goes here
%   Detailed explanation goes here

    %% Initialization
    infoVOI = inputs.infoVOI;
    segmentationVOI = inputs.segmentationVOI;

    featureRootName = inputs.featureRootName;
    out = struct('featureRootName', featureRootName);
    
    %% Calculate pixel voxel sizes
    % Find pixel spacing in millimeters in plane and between planes
    ySpacing = abs(infoVOI{1}.PixelSpacing(1));
    xSpacing = abs(infoVOI{1}.PixelSpacing(2));
    zSpacing = abs(infoVOI{2}.ImagePositionPatient(3) - ...
        infoVOI{1}.ImagePositionPatient(3));
    
    %% Calculate Features 
    area = calculateSurfaceArea(segmentationVOI, xSpacing, ySpacing, ...
        zSpacing);
    volume = calculateVolume(segmentationVOI, xSpacing, ySpacing, ...
        zSpacing);
      
    %% Return intensity values
    out.output = { ... 
        struct(...
        'name', 'surfaceArea(mm^2)',...
        'value', area ...
        ) ...
        struct(...
        'name', 'volume(mm^3)',...
        'value', volume ...
        ) ...
    };
end


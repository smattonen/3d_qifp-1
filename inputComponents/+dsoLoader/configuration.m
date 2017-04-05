function [c] = configuration() 
    c.configArray = {
        struct( ...
            'name', 'inputName', ...
            'value', 'DICOM/DSO Loader' ...
        )
        struct( ...
            'name', 'reference', ...
            'value', '' ...
        )
        struct( ...
            'name', 'functionToInitialize', ...
            'value', 'initializer' ...
        )
        struct( ...
            'name', 'functionToLoad', ...
            'value', 'load' ...
        )
    };

    c.inputInitializeArray = { 
        struct( ...
            'name', 'inputRoot', ...
            'required', false, ...
            'internal', true, ...
            'default', '' ...
        ) 
        struct( ...
            'name', 'dicomFolder', ...
            'required', true ...
        )
        struct( ...
            'name', 'uidToProcess', ...
            'required', true, ...
            'default', 'all' ...
        ) 
        struct( ...
            'name', 'dsoFolder', ...
            'required', true ...
        ) 
        struct( ...
            'name', 'recomputeHashTable', ...
            'required', true, ...
            'default', false ...
        ) 
        struct( ...
            'name', 'saveHashTable', ...
            'required', true, ...
            'default', true ...
        )
    };

    c.inputLoadArray = {
        struct( ...
            'name', 'padding', ...
            'required', true, ...
            'default', 10 ...
        )
        struct( ...
            'name', 'processingUid', ...
            'required', true, ...
            'internal', true ...
        )
        struct( ...
            'name', 'DcmSegmentationObjectFileTable', ...
            'required', true, ...
            'internal', true ...
        )
        struct( ...
            'name', 'DcmImageFileSeriesNumber', ...
            'required', true, ...
            'internal', true ...
        )       
        struct( ...
            'name', 'DcmImageFileSeriesLocationsAvailable', ...
            'required', true, ...
            'internal', true ...
        )       
        struct( ...
            'name', 'DcmImageFileSeriesLocation', ...
            'required', true, ...
            'internal', true ...
        )       
        struct( ...
            'name', 'DcmImageFileTable', ...
            'required', true, ...
            'internal', true ...
        )
        
    };
end
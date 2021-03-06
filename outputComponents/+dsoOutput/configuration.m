function [c] = configuration() 
    c.configArray = {
        struct( ...
            'name', 'outputName', ...
            'value', 'Segmentation to DSO Output' ...
        )
        struct( ...
            'name', 'reference', ...
            'value', '' ...
        )
        struct( ...
            'name', 'functionToEachOutput', ...
            'value', 'output' ...
        )
    };

    c.inputArray = { 
        struct( ...
            'name', 'outputRoot', ...
            'required', true, ...
            'default', pwd ...
        ) 
        struct( ...
            'name', 'outputFolder', ...
            'required', true, ...
            'default', '/' ...
        )
        struct( ...
            'name', 'outputRootName', ...
            'required', true, ...
            'default', [strjoin(strtrim(cellstr(num2str(fix(clock)'))'), '-') ...
                                'dso'] ...
        )
        struct( ...
            'name', 'outputExtension', ...
            'required', true, ...
            'default', 'dcm'...
        )   
        struct( ...
            'name', 'manufacturerModelName', ...
            'required', true, ...
            'default', 'QIFE-Derived'...
        )
        struct( ...
            'name', 'includeOriginalManufacturerModelName', ...
            'required', true, ...
            'default', true...
        )
        struct( ...
            'name', 'seriesDescription', ...
            'required', false, ...
            'default', ''...
        )
        struct( ...
            'name', 'includeOriginalSeriesDescription', ...
            'required', true, ...
            'default', true...
        )
        struct( ...
            'name', 'addDerivedInSeriesDescription', ...
            'required', true, ...
            'default', true...
        )
        struct( ...
            'name', 'derivedFromPrefix', ...
            'required', true, ...
            'default', 'derived from'...
        ) 
        struct( ...
            'name', 'output', ...
            'required', true, ...
            'internal', true ...
        )       
       struct( ...
            'name', 'each', ...
            'required', true, ...
            'default', true ... 
        )       
        struct( ...
            'name', 'processingUid', ...
            'required', false, ...
            'internal', true, ...
            'default', num2str(now) ...
        )
        struct( ...
            'name', 'segmentationVOI', ...
            'required', true, ...
            'internal', true ...
        )
        struct( ...
            'name', 'segmentationInfo', ...
            'required', true, ...
            'internal', true ...
        )
    };

end
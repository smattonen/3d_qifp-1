function [c] = configuration() 
    c.configArray = {
        struct( ...
            'name', 'preProcessingName', ...
            'value', 'Maximum Connected' ...
        )
        struct( ...
            'name', 'reference', ...
            'value', '' ...
        )
        struct( ...
            'name', 'functionToRun', ...
            'value', 'run' ...
        )
    };

    c.inputArray = { 
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
        struct( ...
            'name', 'reportOriginalRegions', ...
            'required', true, ...
            'default', true ...
        ) 
        struct( ...
            'name', 'connectivity', ...
            'required', true, ...
            'default', 18 ...
        ) 
    };
end
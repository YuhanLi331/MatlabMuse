
while(1)
    try
        matlabMuse();
    catch
        disp('Error: Lost connection.');
        tempdata = eegData;
        current_time_str = datestr(now, 'yyyy-mm-dd_HH-MM-SS');
        folder_path = 'E:\Test\MatlabMuse-1\Data';
        filename = sprintf('Termination_SDT_data_%s.mat', current_time_str);
        full_path = fullfile(folder_path, filename);
        save(full_path, 'tempdata');
    end
end
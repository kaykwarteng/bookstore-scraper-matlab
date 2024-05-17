function destination = getDestinationFilePathAndName()
output_file_path = input("Enter destination folder\n> ","s");
output_file_path = strip(output_file_path);
if ~(strcmpi(output_file_path(end),'\') || strcmpi(output_file_path(end),'/'))
    if contains(output_file_path,"\")
        output_file_path = strcat(output_file_path,'\');
    else
        output_file_path = strcat(output_file_path,'/');
    end
end
output_file_name = input("Enter file name\n> ","s");
output_file_name = strip(output_file_name);
destination = strcat(output_file_path,output_file_name,".xls");
end
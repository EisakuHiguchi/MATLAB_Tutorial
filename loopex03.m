fid = fopen('magic.m','r');
count = 0;

while ~feof(fid)%feof = end of file
    line = fgetl(fid);% return next line
    if isempty(line) || strncmp(line,'%',1) || ~ischar(line)
        continue
    end
    count = count + 1;
end
fprintf('%d lines\n', count);
fclose(fid);

% JN Kather 2018-2020
% This is part of the DeepHistology repository
% License: see separate LICENSE file 
% 
% documentation for this function:
% this is a general function to split a list into multiple
% parts 

function ids = splitList(listLength,numParts,randSeed)

    if numParts<=listLength
        disp('--- there are more patients than partitions in this group... good.');
        % create group ID list
        ids = repmat(1:numParts,1,ceil(listLength/numParts));
        % shuffle list
        rng(randSeed);
        ids = ids(randperm(numel(ids)));
        ids = ids(1:listLength); % crop list to target length
    else
        disp(['--- there are ',num2str(numParts),' partitions and ',num2str(listLength),...
            ' patients in this group :-(']);
        warning('there are fewer patients than partitions in this group ... aborting');
        ids = [];
    end

end
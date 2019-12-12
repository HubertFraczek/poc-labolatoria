function res = union(p, q, arr)
    res = arr;
    
    startId = p;
    endId = q;
    
    if startId > endId
       startId = q;
       endId = p;
    end
    res(root(startId, arr)) = root(endId, arr);
end


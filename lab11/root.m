function rootIndex = root(index, arr)
    rootIndex = index;

    while rootIndex ~= arr(rootIndex)
        rootIndex = arr(rootIndex);
    end
end

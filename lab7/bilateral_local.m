function data_filtered = bilateral_local(data, localWindow)
    s = 3;
    Nx = size(data,2);
    Ncy = ceil(localWindow(1)/2);
    Ncx = ceil(localWindow(2)/2);
    data_filtered = size(data);
    h = fspecial('gaussian', localWindow, 25);

    for i = 1:Nx
        p = reshape(data(:, i), localWindow);
        [r, c] = find(p == p);
        r = ceil(reshape(r, localWindow));
        c = ceil(reshape(c, localWindow));
        dist = sqrt((Ncy - r).^2 + (Ncx - c).^2) .* h;
        abs_val = abs(p - p(Ncy,Ncx));
        g = exp(((-1)*(abs_val).^2)/2*(s)^2);
        data_filtered(i) = sum(sum(dist .* g .* p)) / sum(sum(dist .* g));
    end
end
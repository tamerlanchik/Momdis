function manualscale

max1=str2num(get(findobj(graph2d,'Tag','maxx'), 'String'));
min1=str2num(get(findobj(graph2d,'Tag','minx'), 'String'));

max2=str2num(get(findobj(graph2d,'Tag','maxy'), 'String'));
min2=str2num(get(findobj(graph2d,'Tag','miny'), 'String'));

max3=str2num(get(findobj(graph2d,'Tag','maxz'), 'String'));
min3=str2num(get(findobj(graph2d,'Tag','minz'), 'String'));

set(findobj(graph2d,'Tag','ex2d'),'XLim',[min1 max1], 'YLim',[min2 max2], 'ZLim',[min3 max3]);
%set(findobj(graph2d,'Tag','ex2d'),'XLim',[min1 max1], 'YLim',[1 2], 'ZLim',[1 max3])
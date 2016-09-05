function [LabelColorMap] = createLabelColorMapList(list)

LabelColorMap = containers.Map;

labels = list;

for i=1:size(labels,2)
    if ~LabelColorMap.isKey(labels(i))
        LabelColorMap(char(labels(i))) = randomColor();
    end
end

end

function [color] = randomColor()
    color(1) = rand();
    color(2) = rand();
    color(3) = rand();
end

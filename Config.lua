local ImageNetClasses = torch.load('./ImageNetClasses')
for i=1001,#ImageNetClasses.ClassName do
    ImageNetClasses.ClassName[i] = nil
end

function Key(num)
    return string.format('%07d',num)
end


return
{
    TRAINING_PATH = '/data/tmp/xiaohui/imagenet/train/', --Training images location
    VALIDATION_PATH = '/data/tmp/xiaohui/imagenet/val/',  --Validation images location
    VALIDATION_DIR = '/data/tmp/xiaohui/imagenet/LMDB/val/', --Validation LMDB location
    TRAINING_DIR = '/data/tmp/xiaohui/imagenet/LMDB/train/', --Training LMDB location
    ImageMinSide = 256, --Minimum side length of saved images
    ValidationLabels = torch.load('./ValidationLabels'),
    ImageNetClasses = ImageNetClasses,
    Normalization = {'simple', 118.380948, 61.896913}, --Default normalization -global mean, std
    Compressed = true,
    Key = Key
}

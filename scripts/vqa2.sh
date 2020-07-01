# Setup
mkdir data
mkdir data/VQA2-Features
mkdir data/VQA2-Questions

# Get VQA2 Features
wget --no-check-certificate https://nlp1.cs.unc.edu/data/lxmert_data/mscoco_imgfeat/train2014_obj36.zip
wget --no-check-certificate https://nlp1.cs.unc.edu/data/lxmert_data/mscoco_imgfeat/val2014_obj36.zip

unzip train2014_obj36.zip
unzip val2014_obj36.zip

rm train2014_obj36.zip
rm val2014_obj36.zip

mv mscoco_imgfeat/val2014_obj36.tsv data/VQA2-Features
mv train2014_obj36.tsv data/VQA2-Features

rm -r mscoco_imgfeat

# Get VQA 2 Questions
wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Train_mscoco.zip
wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Val_mscoco.zip

# Get VQA 2 Annotations
wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Train_mscoco.zip
wget https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Val_mscoco.zip

unzip v2_Questions_Train_mscoco.zip
unzip v2_Questions_Val_mscoco.zip
unzip v2_Annotations_Train_mscoco.zip
unzip v2_Annotations_Val_mscoco.zip

mv v2_OpenEnded_mscoco_train2014_questions.json data/VQA2-Questions/
mv v2_OpenEnded_mscoco_val2014_questions.json data/VQA2-Questions/
mv v2_mscoco_train2014_annotations.json data/VQA2-Questions/
mv v2_mscoco_val2014_annotations.json data/VQA2-Questions/

rm v2_Questions_Train_mscoco.zip
rm v2_Questions_Val_mscoco.zip
rm v2_Annotations_Train_mscoco.zip
rm v2_Annotations_Val_mscoco.zip
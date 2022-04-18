install.packages(c("keras", "tensorflow"))
library(keras)
library(tensorflow)
library(EBImage)
library(arrayhelpers)
use_condaenv("r-tensorflow")
base_dir <- "/Users/abhishek/Desktop/MSF/Machine_Learning/train/allImages"
train_datagen <- image_data_generator(rescale = 1/255)
t_generator <- flow_images_from_directory(base_dir,train_datagen,target_size = c(28,28),batch_size=1)
install_tensorflow(package_url = "https://pypi.python.org/packages/b8/d6/af3d52dd52150ec4a6ceb7788bfeb2f62ecb6aa2d1172211c4db39b349a2/tensorflow-1.3.0rc0-cp27-cp27mu-manylinux1_x86_64.whl#md5=1cf77a2360ae2e38dd3578618eacc03b")
batch <- generator_next(t_generator)
reticulate::py_config()
reticulate::py_install('pillow',pip = TRUE)
reticulate::py_install('scipy',pip = TRUE)
batch <- generator_next(t_generator)
i1<-image_load("/Users/abhishek/Desktop/MSF/Machine_Learning/train/Class_0/scroll1_s2_0.jpg")
i1
i1arr<-image_to_array(i1)
i2 <- resize(i1arr,1,100)
i2

summary(i2)
twoD <- as.data.frame(i2)
View(twoD)
write.csv(twoD,"firstimage.csv")

base_dir <- "/Users/abhishek/Desktop/MSF/Machine_Learning/train/allImages/"


for (j in 1:106) {
  imageDir <- paste(base_dir,j,'.jpg', sep = '')
  ix <- image_load(imageDir)
  imageName <- paste(j,'.csv')
  iarray <- image_to_array(ix)
  iarray <- resize(iarray,1,100)
  idf <- as.data.frame(iarray)
  write.csv(idf,imageName)
}





















import os
import cv2


folder1_path = '/BasicSR/HAT/results/HAT_SRx4_ImageNet-LR/visualization/custom/'
folder2_path = '/BasicSR/HAT/datasets/Set5/LRbicx2'

for filename in os.listdir(folder1_path):
    file_path = os.path.join(folder1_path, filename)
    img1 = cv2.imread(file_path)
    filename2 = filename.split("_")[0] + ".png"
    file_path2 = os.path.join(folder2_path, filename.split("_")[0] + ".png")
    img2 = cv2.imread(file_path2)
    
    height1, width1, _ = img1.shape
    height2, width2, _ = img2.shape
    
    if height1 == 4 * height2 and width1 == 4 * width2:
        print(f"Изображение {filename2} в results в 4 раза больше, чем в datasets")
    else:
        print(f"Изображение {filename2} в results не в 4 раза больше, чем в datasets")

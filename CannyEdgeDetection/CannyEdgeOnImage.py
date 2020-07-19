import cv2
import numpy as np
import matplotlib.pyplot as plt
import sys


# read the image
image = cv2.imread("image.jpeg")
# convert it to grayscale
gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
# show the grayscale image
plt.imshow(gray, cmap="gray")
plt.show()
# perform the canny edge detector to detect image edges
edges = cv2.Canny(gray, threshold1=30, threshold2=100)
plt.imshow(edges, cmap="gray")
plt.show()

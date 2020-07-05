import cv2
import numpy as np

cap = cv2.VideoCapture(0)     #capture live video from webcamera

#loop until program is exited
while (1):


    ret, frame = cap.read()

   #converting BGR into HSV
    hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

    #range definition
    lower_red = np.array([30, 150, 50])
    upper_red = np.array([255, 255, 180])

    #threshold set
    mask = cv2.inRange(hsv, lower_red, upper_red)

    res = cv2.bitwise_and(frame, frame, mask=mask)

    #original image display
    cv2.imshow('Original', frame)


    edges = cv2.Canny(frame, 100, 200)

    #edge display
    cv2.imshow('Edges', edges)

    # Wait for Esc key to stop
    k = cv2.waitKey(5) & 0xFF
    if k == 27:
        break

# Close window
cap.release()

# de-allocating associated memory
cv2.destroyAllWindows()

#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include <string>
#include <opencv2/core/core.hpp>
#include <stdlib.h>
using namespace std;
using namespace cv;

int main(int ac, char** av[]) {
    
    if (ac == 7) {
        Mat image = imread(av[4], IMREAD_ANYCOLOR | IMREAD_ANYDEPTH); //reading colorful image
        Mat output;
        if (image.empty())
        {
            cout << "No image found" << endl;
            return (0);
        }
        int k = strtol(av[6]);
        string type = av[2];
        switch (type) {
        case median:
            // apply a median filter:
            medianBlur(image, output, k);
            break;
        case mean:
            // apply average filter:
            blur(image, output,size(k, k));
            break;
        default:
            cout << "Type of filter not found" << endl;

        }

        imwrite("my_image.out.png", output);
        namedWindow("Display Window", WINDOW_NORMAL);
        imshow("Display Window", output);
        
        waitKey(0);
    }
    else {
        cout << "Wrong Command" << endl;
    }

    return 0;
}
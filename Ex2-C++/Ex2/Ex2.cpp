#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
using namespace cv;
using namespace std;
int main() {
	Mat img, output;
	int kernel = 7;
	img = imread("my_image.png", IMREAD_ANYCOLOR | IMREAD_ANYDEPTH);
	medianBlur(img,output,7);
	imwrite("my_image.out.png", output);
	namedWindow("Display Window",WINDOW_NORMAL);
	imshow("Display Window",output);
	waitKey(0);

	return 0;
}

#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include <stddef.h>
#include <stdio.h>

using namespace cv;
using namespace std;
int main(int argc, char* argv[]) {
	// ./filter -t <median|average> -i filename -w kernel
	if (argc < 7) {
		cout << "Invalid Command";
		return -1;
	}
	string type;
	string filename;
	char kernel;
	const char* n_argv[] = { "./filter","-t",type,"-i",filename, "-w",kernel,NULL };
	argv = n_argv;
	string a = argv[0];
	string b = argv[1];
	string c = argv[3];
	string d = argv[5];
	int k = argv[6];
	string nameimg= argv[4];
	string blurtype = argv[2];
	Mat img, output;
	if (blurtype.compare("median") == 0 || blurtype.compare("average")== 0) {
		img = imread(nameimg, IMREAD_ANYCOLOR | IMREAD_ANYDEPTH);
		medianBlur(img, output,k);
		imwrite("my_image.out.png", output); 
		namedWindow("Display Window", WINDOW_NORMAL);
		imshow("Display Window", output);
		waitKey(0);
	}
	return 0;
}

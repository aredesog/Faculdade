#include <cstdlib>
#include <stdio.h>
#include <iostream>
#include <time.h>
#include <fstream>
#include <string.h>

using namespace std;

int main() {

    int n, i, p;

    i = 1;

    cout << "Declare seu número: ";
    cin >> n;

    while (i < n) {
        cout << i << " ";
        p = i + 1;
        cout << p << " ";
        i = p + 1;
    }
    cout << endl << n;
    cout << " = " << i - p << endl;

    return 0;
}

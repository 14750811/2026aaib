///week09-4.cpp 要交換陣列裡的數字
#include <stdio.h>
int main()
{
    int a=99,b=34; ///有兩個水瓶 a裝咖啡 b裝清水
    printf("a:%d b:%d\n",a,b);
    int temp=a; ///再準備第三個瓶子temp 先接住a的咖啡
    a=b; ///a瓶子就可以接住b的清水
    b=temp; ///b瓶子就可以接住temp裡暫時放的咖啡
    printf("交換後a:%d b:%d\n",a,b);
}


#import "UIDevice+Hardware.h"

#include <sys/socket.h> // Per msqr
#include <sys/sysctl.h>
#include <net/if.h>
#include <net/if_dl.h>
#import <sys/utsname.h>
#import <SystemConfiguration/CaptiveNetwork.h>
// 下面是获取IP需要的头文件
#import <sys/ioctl.h>
#include <ifaddrs.h>
#import <arpa/inet.h>

//
#import <AdSupport/Adsupport.h>
//
#import <CoreTelephony/CTCarrier.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>

@implementation UIDevice (Hardware)
#pragma mark sysctlbyname utils

- (NSString *)quys_platform
{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];

    return deviceString;
}



@end

#import <Foundation/Foundation.h>
#import "NSString+RelativePath.h"


void testRelative1()
{
    NSString *baseDirPath = @"~/Desktop/test/foo/who";
    NSString *thePath = @"~/Desktop/test/hoge.rtf";

    NSString *relPath = [thePath relativePathFromBaseDirPath:baseDirPath];

    NSLog(@"base dir: \"%@\"", baseDirPath);
    NSLog(@"the path: \"%@\"", thePath);
    NSLog(@"relative path: \"%@\"", relPath);
    NSLog(@"----");
}

void testRelative2()
{
    NSString *baseDirPath = @"~/Desktop/";
    NSString *thePath = @"~/Desktop/test/hoge.rtf";
    
    NSString *relPath = [thePath relativePathFromBaseDirPath:baseDirPath];
    
    NSLog(@"base dir: \"%@\"", baseDirPath);
    NSLog(@"the path: \"%@\"", thePath);
    NSLog(@"relative path: \"%@\"", relPath);
    NSLog(@"----");
}

void testRelative3()
{
    NSString *baseDirPath = @"/Applications";
    NSString *thePath = @"~/Desktop/test/hoge.rtf";
    
    NSString *relPath = [thePath relativePathFromBaseDirPath:baseDirPath];
    
    NSLog(@"base dir: \"%@\"", baseDirPath);
    NSLog(@"the path: \"%@\"", thePath);
    NSLog(@"relative path: \"%@\"", relPath);
    NSLog(@"----");
}

void testAbsolute1()
{
    NSString *baseDirPath = @"~/Desktop/test";
    NSString *relPath = @"foo.rtf";
    
    NSString *absPath = [relPath absolutePathFromBaseDirPath:baseDirPath];

    NSLog(@"base dir: \"%@\"", baseDirPath);
    NSLog(@"relative path: \"%@\"", relPath);
    NSLog(@"absolute path: \"%@\"", absPath);
    NSLog(@"----");
}

void testAbsolute2()
{
    NSString *baseDirPath = @"~/Desktop/test";
    NSString *relPath = @"../foo.rtf";
    
    NSString *absPath = [relPath absolutePathFromBaseDirPath:baseDirPath];
    
    NSLog(@"base dir: \"%@\"", baseDirPath);
    NSLog(@"relative path: \"%@\"", relPath);
    NSLog(@"absolute path: \"%@\"", absPath);
    NSLog(@"----");
}

void testAbsolute3()
{
    NSString *baseDirPath = @"~/Desktop/test";
    NSString *relPath = @"./foo.rtf";
    
    NSString *absPath = [relPath absolutePathFromBaseDirPath:baseDirPath];
    
    NSLog(@"base dir: \"%@\"", baseDirPath);
    NSLog(@"relative path: \"%@\"", relPath);
    NSLog(@"absolute path: \"%@\"", absPath);
    NSLog(@"----");
}

void testAbsolute4()
{
    NSString *baseDirPath = @"/Applications";
    NSString *relPath = @"../../foo.rtf";
    
    NSString *absPath = [relPath absolutePathFromBaseDirPath:baseDirPath];
    
    NSLog(@"base dir: \"%@\"", baseDirPath);
    NSLog(@"relative path: \"%@\"", relPath);
    NSLog(@"absolute path: \"%@\"", absPath);
    NSLog(@"----");
}

void testAbsolute5()
{
    NSString *baseDirPath = @"/Applications/Test";
    NSString *relPath = @"./../Test/../foo.rtf";
    
    NSString *absPath = [relPath absolutePathFromBaseDirPath:baseDirPath];
    
    NSLog(@"base dir: \"%@\"", baseDirPath);
    NSLog(@"relative path: \"%@\"", relPath);
    NSLog(@"absolute path: \"%@\"", absPath);
    NSLog(@"----");
}

int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    testRelative1();
    testRelative2();
    testRelative3();

    testAbsolute1();
    testAbsolute2();
    testAbsolute3();
    testAbsolute4();
    testAbsolute5();

    [pool drain];
    return 0;
}


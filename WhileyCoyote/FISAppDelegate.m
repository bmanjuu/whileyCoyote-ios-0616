//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSUInteger steps = 0;
    NSUInteger anvil = arc4random_uniform(25) + 26; //for advanced portion
    
    do{
        if(steps%10 == 0 && steps > 0 && steps != anvil){  //replaced 50 with anvil
            NSLog(@"%lu: YOU'RE CUCKOO!", steps);
        }
        else if (steps == anvil){ //replaced 50 with anvil
            NSLog(@"%lu: SMASH!", steps); //when the anvil is dropped, it prints "SMASH!"
            break; //optional: added break so it would exit the loop upon the anvil being dropped ... or the anvil misses whiley coyote and they both continue on their merry way chasing each other :)
        }
        else {
        NSLog(@"%lu : Meep! Meep!", steps);
        }
        steps++;
    } while (steps <= 50);
    
    // do not alter
    return YES;  //
    ///////////////
}

@end

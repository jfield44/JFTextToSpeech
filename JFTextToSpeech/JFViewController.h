//
//  JFViewController.h
//  JFTextToSpeech
//
//  Created by Jonathan Field on 25/09/2013.
//  Copyright (c) 2013 Jonathan Field. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>

@interface JFViewController : UIViewController <AVSpeechSynthesizerDelegate, UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (nonatomic, retain) AVSpeechSynthesizer *speechSynthesizer;
@property (weak, nonatomic) IBOutlet UISlider *speedSlider;

- (IBAction)speakButtonWasPressed:(id)sender;
- (void)speakText:(NSString *)toBeSpoken;
- (IBAction)speechSpeedShouldChange:(id)sender;

@end

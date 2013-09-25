//
//  JFViewController.m
//  JFTextToSpeech
//
//  Created by Jonathan Field on 25/09/2013.
//  Copyright (c) 2013 Jonathan Field. All rights reserved.
//

#import "JFViewController.h"

@interface JFViewController ()

@end

@implementation JFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Add Border to TextBox
    [self.textView.layer setBorderWidth:.5f];
    [self.textView.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [self.textView setDelegate:self];
    
    //Instantiate the object that will allow us to use text to speech
     self.speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    [self.speechSynthesizer setDelegate:self];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 Dismiss the keyboard when the user presses done
 */
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    
    BOOL retval = TRUE;
    
    if([text isEqualToString:@"\n"]){
        [self.textView resignFirstResponder];
        retval = FALSE;
    }
    
    return retval;
    
}

#pragma Speech Manipulation

/*
 User pressed the button titled 'Speak'
 */
- (IBAction)speakButtonWasPressed:(id)sender{

    [self speakText:[self.textView text]];

}

/*
 Take the current contents of the TextView and output it through the speakers of the user's device
 */
- (void)speakText:(NSString *)toBeSpoken{
    
    AVSpeechUtterance *utt = [AVSpeechUtterance speechUtteranceWithString:toBeSpoken];
    utt.rate = [self.speedSlider value];
    [self.speechSynthesizer speakUtterance:utt];
    
}

/*
 Increase or decrease the rate at which the text will be spoken
 */
- (IBAction)speechSpeedShouldChange:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    NSInteger val = lround(slider.value);
    NSLog(@"%@",[NSString stringWithFormat:@"%ld",(long)val]);
}

@end

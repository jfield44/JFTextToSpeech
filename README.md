JFTextToSpeech
==============

iOS AVSpeechSynthesizer Example

Simple example showing how to have the iPhone speak text from a UITextView.
The speed at which the text is spoken can also be changed by a slider.

==============

The simplest way to implement text to speech is by declaring the following
```Objective-C

     //Replace to be spoken with your Text
    AVSpeechUtterance *utt = [AVSpeechUtterance speechUtteranceWithString:toBeSpoken];
    
    //Set the speed at which the text will be spoken, between -1 and 1 is a good range
    utt.rate = [self.speedSlider value]; 
    
     // Speak the text
    [self.speechSynthesizer speakUtterance:utt];
```

==============

I can be contacted at
Jonathan Field || http://jonathanfield.me

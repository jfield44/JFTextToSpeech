JFTextToSpeech
==============

iOS AVSpeechSynthesizer Example

Simple example showing how to have the iPhone speak text from a UITextView.
The speed at which the text is spoken can also be changed by a slider.

==============

The simplest way to implement text to speech is by declaring the following

AVSpeechUtterance *utt = [AVSpeechUtterance speechUtteranceWithString:toBeSpoken];
    utt.rate = [self.speedSlider value];
    [self.speechSynthesizer speakUtterance:utt];


==============

I can be contacted at
Jonathan Field || http://jonathanfield.me

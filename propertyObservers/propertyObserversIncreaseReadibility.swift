#!/usr/bin/swift
var myFontSize = 10 
{
    willSet(newFontSize) {print("Will set font to \(newFontSize), it was \(myFontSize)")}
    didSet(oldFontSize) {print("Did set font to \(myFontSize), it was \(oldFontSize)")} 
}
myFontSize = 6

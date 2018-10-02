Class {
	#name : #MalGanterAlgoTest,
	#superclass : #TestCase,
	#category : #'Moose-Tests-Algos-FormalConceptAnalysis'
}

{ #category : #initialization }
MalGanterAlgoTest >> initializeContext [
	| data fca context |
	data := #(#(#Cat #(#fourlegs #hair)) #(#Dog #(#smart #fourlegs #hair)) #(#Dolphin #(#smart #marine)) #(#Gibbon #(#hair #smart #thumbed)) #(#Man #(#smart #thumbed #hair #marine)) #(#Whale #(#smart #marine))).
	fca := MalFormalContext new.
	^context := fca with: data using: #first using: #last.

]

{ #category : #tests }
MalGanterAlgoTest >> testMammals [
	| fca element |
	fca := self initializeContext.
	element := (fca concepts at: 2) attributes at: 1.
	self assert: element bits equals: 27.
	self assert: element value equals: #hair.
	self assert: element mask equals: 2
]
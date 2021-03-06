"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:
""Im a Dice like in the real world""
For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	numberOfFaces:		<Object>
	random:		<Object>


    Implementation Points
"
Class {
	#name : #Dice,
	#superclass : #Object,
	#instVars : [
		'numberOfFaces'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #creation }
Dice class >> assertValidFaces: aNumberOfFaces [
	aNumberOfFaces > 3
		ifFalse: [ self error: 'Number of faces must be 4 or greater' ]
]

{ #category : #creation }
Dice class >> withFaces: aNumberOfFaces [
	self assertValidFaces: aNumberOfFaces.
	^ self new
		initializeWithFaces: aNumberOfFaces;
		yourself
]

{ #category : #initialize }
Dice >> initializeWithFaces: aNumberOfFaces [
	"The number of faces of the dice is assigned"

	numberOfFaces := aNumberOfFaces
]

{ #category : #actions }
Dice >> roll [
	"Abstract method so subclasses specify how the dice rolls"

	self subclassResponsibility
]

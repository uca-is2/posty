"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:
""Im a deterministic Dice so its possible to test some aspects of this game""
For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #SameFaceDice,
	#superclass : #Dice,
	#instVars : [
		'returnValue'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #action }
SameFaceDice >> nextRollNumber: aNumber [ 
	returnValue := aNumber
]

{ #category : #actions }
SameFaceDice >> roll [
	"Whenever you roll the dice it returns 4"

	^ returnValue 
]

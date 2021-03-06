"
file :=  'ArgoUML-0.34.mse' asFileReference readStream.

dictionary := Dictionary newFrom: (
	FamixJavaEntity withAllSubclasses collect: [ :c | 
		cn := c name withoutPrefix: #FamixJava.
		('FAMIX.', cn) -> ('FamixJava-Entities.', cn) ]).

dictionary at: 'FAMIX.JavaSourceLanguage' put: 'FamixJava-Entities.SourceLanguage'.

repo := MooseModel importFrom: file withMetamodel: FamixJavaGenerator metamodel translationDictionary: dictionary.

model := MooseModel new.
	model silentlyAddAll: repo elements.
	model entityStorage forRuntime.
model.
"
Class {
	#name : #FamixJavaEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-Java-Entities-Entities'
}

{ #category : #meta }
FamixJavaEntity class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #'Famix-Java-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixJavaEntity class >> generatedSlotNames [
	<generated>
	'FamixJavaEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixJavaEntity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FamixJavaEntity class >> metamodel [

	<generated>
	^ (self class environment at: #FamixJavaGenerator) metamodel
]

{ #category : #meta }
FamixJavaEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query' }
FamixJavaEntity class >> resetMSEProperties [
	"
	self resetMSEProperties
		"

	self allSubclasses
		do: [ :aSubClass | 
			aSubClass resetMooseQueryCaches.]
]

{ #category : #'Moose-Query' }
FamixJavaEntity class >> resetMooseQueryCaches [
	"Here do nothing. Customize in subclasses."
]

{ #category : #'as yet unclassified' }
FamixJavaEntity >> belongsTo [
	"Return the primary container of the entity if it exist"
	
	^ self subclassResponsibility
]

{ #category : #testing }
FamixJavaEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isContainerEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isPrimitiveType [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixJavaEntity >> isType [

	<generated>
	^ false
]

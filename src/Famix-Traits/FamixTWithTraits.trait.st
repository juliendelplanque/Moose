Trait {
	#name : #FamixTWithTraits,
	#instVars : [
		'#traits => FMMany type: #FamixTTrait opposite: #traitOwner'
	],
	#category : #'Famix-Traits-Trait'
}

{ #category : #meta }
FamixTWithTraits classSide >> annotation [

	<MSEClass: #TWithTraits super: #Trait>
	<generated>
	<package: #'Famix-Traits'>
	^self
]

{ #category : #generator }
FamixTWithTraits classSide >> generatedSlotNames [
	<generated>
	'FamixTWithTraits class>>#generatedSlotNames'.
	^ #(traits)
]

{ #category : #accessing }
FamixTWithTraits >> addTrait: anObject [
	traits add: anObject

]

{ #category : #accessing }
FamixTWithTraits >> traits [

	<generated>
	^ traits
]

{ #category : #accessing }
FamixTWithTraits >> traits: anObject [

	<generated>
	traits value: anObject

]
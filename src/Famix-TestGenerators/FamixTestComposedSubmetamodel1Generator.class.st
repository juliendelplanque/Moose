Class {
	#name : #FamixTestComposedSubmetamodel1Generator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'classEntity',
		'method',
		'customEntity1',
		'customEntity2',
		'customEntity3',
		'customEntity4',
		'customEntity5'
	],
	#category : #'Famix-TestGenerators'
}

{ #category : #accessing }
FamixTestComposedSubmetamodel1Generator class >> packageName [ 

	^ 'Famix-TestComposedSubmetamodel1-Entities'


]

{ #category : #accessing }
FamixTestComposedSubmetamodel1Generator class >> prefix [

	^ #FamixTestComposed1
]

{ #category : #definition }
FamixTestComposedSubmetamodel1Generator >> defineClasses [

	super defineClasses.

	classEntity := builder newClassNamed: #Class.
	method := builder newClassNamed: #Method.
	
	customEntity1 := builder newClassNamed: #CustomEntity1.
	customEntity2 := builder newClassNamed: #CustomEntity2.
	customEntity3 := builder newClassNamed: #CustomEntity3.
	customEntity4 := builder newClassNamed: #CustomEntity4.
	customEntity5 := builder newClassNamed: #CustomEntity5.

]

{ #category : #definition }
FamixTestComposedSubmetamodel1Generator >> defineHierarchy [ 

	super defineHierarchy.

	classEntity --|> namedEntity.
	classEntity --|> #TClass.
	classEntity --|> #TWithMethods.

	method --|> namedEntity.
	method --|> #TMethod.

	customEntity1 --|> entity.
	customEntity2 --|> entity.
	customEntity3 --|> entity.
	customEntity4 --|> entity.
	customEntity5 --|> entity.
	
	customEntity5 --|> #TEntityMetaLevelDependency.
	customEntity5 --|> #TDependencyQueries.

	
]

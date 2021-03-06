Class {
	#name : #MooseNavigationPresentation,
	#superclass : #GLMCompositePresentation,
	#category : #'Moose-Finder'
}

{ #category : #building }
MooseNavigationPresentation >> compose [
	self
		title: 'Navigation';
		titleIcon: MooseIcons mooseNavigation.
	self list
		updateOn: MooseEntityAdded from: [ :anObject | anObject announcer ];
		updateOn: MooseEntityRemoved from: [ :anObject | anObject announcer ];
		display: [ :anObject | self displayFor: anObject ];
		send: [ :association | association value ];
		icon: [ :each | each value mooseInterestingEntity mooseIcon ];
		format: [ :each | self formatFor: each ];
		dynamicActionsOnSelection: [ :list | self dynamicActionsIn: list ]
]

{ #category : #private }
MooseNavigationPresentation >> displayFor: anObject [
	| anEntity items |
	
	anEntity := anObject mooseInterestingEntity.
	
	items := anEntity navigationItemsFromPragmas.
	items addAll: anEntity navigationItemsFromAttributes.
	items addAll: anEntity customNavigationItems.
	
	^ items
	
]

{ #category : #private }
MooseNavigationPresentation >> dynamicActionsIn: list [
	^ list selection mooseInterestingEntity mooseFinderActions
		add:
			(GLMGenericAction new
				action: [ :x | 
					Smalltalk tools browser
						openOnClass: list rawSelection key methodClass
						selector: list rawSelection key methodSelector ];
				title: 'Browse the method implementing the navigation';
				category: 'Utilities');
		yourself
]

{ #category : #private }
MooseNavigationPresentation >> formatFor: each [
	^ (' ' join: ((each key) piecesCutWhereCamelCase collect: #capitalized)) , ' - '
		, (each value gtDisplayString contractTo: 50)
]

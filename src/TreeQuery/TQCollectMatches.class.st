Class {
	#name : #TQCollectMatches,
	#superclass : #TQSearchStrategy,
	#category : #'TreeQuery-Query'
}

{ #category : #searching }
TQCollectMatches >> search: aTQIterator [
	^ (((aTQIterator
			outputTo: [ :node | self predicate matches: node ] selectIt)
			outputTo: [ :node | node ] collectIt)
			outputTo: TQUnwrapperDecorator) upToEnd
]

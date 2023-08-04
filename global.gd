extends Node

var  polen = 0

var items = {
	0:{
		"Name" : "guerreira",
		"Des" : "Uma abelha brava capaz de defender a colmeia de vespas",
		"Cost" : 10 ,
		"Icon" : preload("res://VNES ASsets/Guerreira.png")
	},
	1:{
		"Name" : "operaria",
		"Des" : "uma abelha operaria que fornece polen com o tempo",
		"Cost" : 5 ,
		"Icon" : preload("res://VNES ASsets/abelinho.png")
	},
	2:{
		"Name" : "construir colmeia",
		"Des" : "construa uma outra colônia de abelhas!",
		"Cost" : 100 ,
		"Icon" : preload("res://VNES ASsets/colmeia.png")
	},
}

var inventory = {
	0:{
		"Name" : "guerreira",
		"Des" : "Uma abelha brava capaz de defender a colmeia de vespas",
		"Cost" : 10 ,
		"Count" : 1
	},
}

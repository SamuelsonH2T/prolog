aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).
frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).
funcionario(pedro, ufrj).
funcionario(ana_paula, puc).
funcionario(carlos, puc).






/*

1) 
a) resposta: professor(X,Y), aluno(Z,Y).
b) resposta: frequenta(X,Y), funcionario(Z,Y).



entrada:-
write('Digite o nome do aluno'),
read(Nome)
nota(Nome,Nota), Nota < 7, writeln("recuperacao").


*/


nota(joao,5.0).
nota(maria,6.0).
nota(joana,8.0).
nota(mariana,9.0).
nota(cleuza,8.5).
nota(jose,6.5).
nota(jaoquim,4.5).
nota(mara,4.0).
nota(mary,10.0).

situacao(N,R):- nota(N,X),X > 6.9 , X=<10, R= "APROVADO".
situacao(N,R):- nota(N,X),X = > 5 , X<7, R= "RECUPERACAO".
situacao(N,R):- nota(N,X),X < 5, R= "REPROVADO".





/*
2)
a)resposta: nota(joao,Nota), Nota is 5.0, writeln("recuperacao").

tera que ser com entrada de dados, para processar os dados sem perda.
*/









%3

filme('Amnesia','Suspense',	'Nolan', 2000, 113).
filme('Babel','Drama','Inarritu', 2006, 142).
filme('Capote','Drama',	'Miller', 2005, 98).
filme('Casablanca','Romance','Curtiz', 1942, 102).
filme('Matrix','Ficcao','Wachowsk', 1999, 136).
filme('Rebeca','Suspense','Ritchcock', 1940, 130).
filme('Shrek','Aventura','Adamson', 2001, 90).
filme('Sinais','Ficcao','Shymalan', 2002, 106).
filme('Spartakus','Acao','Kubrik', 1960, 184).
filme('Superman','Aventura','Donnan', 1978, 183).
filme('Titanic','Romance','Cameron', 1997, 194).
filme('Tubarao','Suspense','Spielberg', 1975, 124).
filme('Volver','Drama','Almodólver', 2006, 121).


diretor(F,Diretor):- filme('Titanic',_,Diretor,_,_).
suspense(F):- filme(F,'Suspense',_,_,_).
duracao(M,F):-filme(F,_,_,_,T), T<M.
lancados(AI,AF,F):-filme(F,_,_,A,_), AI<A, A<AF.
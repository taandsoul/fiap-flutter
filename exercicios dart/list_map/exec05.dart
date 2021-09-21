void main() {

/*
    Armazenar o nome, sexo e idade de 5 pessoas.
    As entradas devem ser apenas “F” ou “M” para o sexo e valores 
    positivos para a idade. Após a digitação dos dados, exibir os dados 
    (nome, sexo e idade) de todas as pessoas do sexo feminino.    
*/

  Pessoa p1= Pessoa("Selma", "F", 74);
  Pessoa p2 = Pessoa("Cleide", "F", 56);
  Pessoa p3 = Pessoa("Nádia", "F", 62);
  Pessoa p4 = Pessoa("João", "M", 78);
  Pessoa p5 = Pessoa("Maria", "F", 55);
  
  final pessoas  = [p1,p2,p3,p4,p5];
    
  for(Pessoa p in pessoas) {
    if(p.sexo == "F"){
      print("================");
      print(p.nome);
      print(p.sexo);
      print(p.idade);
      print("================");
    }
  }  
}

class Pessoa {
  String nome;
  String sexo;
  int idade;
  Pessoa(this.nome, this.sexo, this.idade);
}
 


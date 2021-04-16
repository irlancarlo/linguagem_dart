/* Tipos de variaveis */
void main() {
  var nome = "Irlan Gomes";
  String email = "irlan.carlo@gmail.com";
  int idade = 35;
  double salario = 5000.30;
  bool casado = true;
  
  print ("Dados pessoais: $nome, $email, $idade, $salario, $casado");
}

// --------------------- //

/* Arrays */ 
void main() {
  
  var nome = "irlan";
  var nomes = ["irlan", "gomes"];
  var mistos = [35, "carlo"];
  
  print("nome: $nome");
  print(nomes[0]);
  print("nomes: $nomes ");
  print("nomes: $nomes[0] ");
  print(mistos[0]);
  print(mistos[1]);
}

// --------------------- //

  /* Operadores básicos aritimeticos
   * Some
   * Subtratacao
   * Multiplicacao
   * Subtracao */
void main() {
  var a = 4;
  var b = 2;
  var soma;
  var sub;
  var mul;
  var div;
  var num1 = a;
  var num2 = a;
  
  soma = a + b;
  sub = a - b;
  mul = a + b;
  div = a / b;
  num1 += b;
  num2--;
  
  print("soma: $soma");
  print("subtração: $sub");
  print("multiplicação: $mul");
  print("divisão: $div");
  print("operador resumido: $num1 ");
  print("operador resumido: $num2 ");
    
}

// --------------------- //


void main() {

    /* Operadores relacionais
   * == (igual a)
   * != (diferente)
   * > (maior que)
   * < (menor que)
   * >= (maior ou igual)
   * <= (menor ou igual)
   * */
  
  /* Operadores lógicos
   * && (e)
   * || (ou)
   * */
  
  /* Operador de negação
   * ! (negação)
   * */
  
}

// --------------------- //

/* Controle de fluxo (if else) */
void main() {
  
  if(true){
    print("verdadeiro");
  } else {
    print("falso");
  }
  
}

// --------------------- //

/* Controle de fluxo (switch) */
void main() {

  var comando = "sacar";
  
  switch(comando) {
    case "depositar":
      print("depositou");
      break;
    case "sacar":
      print("sacou");
      break;
  }
}

// --------------------- //

void main() {
  /* while */
  
  var numero = 1;
  while(numero < 5) {
    print(numero);
    numero++;
  }
  
  print("-------");
  
  /* loop */
  
  for(int i = 0; i <= 10; i++){
    print(i);
  }
  
  print("-------");
  
  var nomes = [
    "irlan",
    "carlo",
    "do",
    "amaral",
    "gomes"
  ];
  
  for(var nome in nomes){
    print(nome);
  }
  
  print("-------");
  
  var valor = 1;
  do{
    print(valor);
    valor++;
  }while(valor <=5);
  
}

// --------------------- //

/* Função */

void exibirMensagem(String nome, int idade){
  print("Alguma mensagem $nome, $idade  :)");
}

double calcularSalarioVariasLinhas(double salario){
  var total = salario - (salario * 0.1);
  return total;
}

double calcularSalarioUmaLinhas(double salario) => 
  salario - (salario * 0.1);

void main() {
  exibirMensagem("Irlan", 35);
  
  print("------");
  
  var bonus = 500;
  var salario = calcularSalarioVariasLinhas(1000);
  salario += bonus; 
  
  print("valor salario (funcao varias linhas): $salario");
  
  print("------");
  
  var salarioUmaLinha = calcularSalarioUmaLinhas(1000);  
  print("valor salario (funcao uma linha): $salarioUmaLinha");
  
}

// --------------------- //

/* 
 * Parametros opcionais, sempre os ultimos, 
 * não podem nunca ser o primeiro paramentro.
 * Não pode ter paramentro depois dos opcionais.
 * */
void exibirDados(String nome, {int idade = 0, double altura = 0}){
  
  print("nome $nome");
  print("idade $idade");
  print("altura $altura");
  print("-------");
}

/* Função parametro  * */

void calcularSalario(double salario, Function funcaoParamentro){
  print("seu salario: $salario");
  funcaoParamentro();
}

void calcularBonus(){
  print("seu bonus de 20");
}

void main() {
  exibirDados("irlan");
  exibirDados("irlan", idade: 35);
  exibirDados("irlan", altura: 1.65);
  exibirDados("irlan", idade: 35, altura: 1.65);
  
  //////
  
  calcularSalario(1000, calcularBonus);
  
  ////
  /* Função anonima */
  calcularSalario(1000, (){
    print("corpo da função anonima");
  });
}

// --------------------- //

/** Classes e objetos **/
class Usuario {
  String nome = "";
  String telefone = "";
  
  Usuario(String nome, String telefone){
    this.nome = nome;
    this.telefone = telefone;
    print("construtor quando tiver que fazer algo no corpo");
  }
}

class Usuario2 {
  String nome = "";
  String telefone = "";
  int idade = 0;
  
  Usuario2(this.nome, this.telefone, this.idade);
  
}

class Usuario3 {
  String nome = "";
  String cargo = "";
  
  /* Named constructor */
  Usuario3.diretor(this.nome){
    this.cargo = "diretor";
    print("Cargo: "+this.cargo);
  }
}

void main() {

  Usuario user = new Usuario("irlan", "21212121");
  
  Usuario2 user2 = new Usuario2("irlan", "21212121", 35);
  print(user2.nome);
  
  Usuario3 user3 = new Usuario3.diretor("irlan");
  
}

// --------------------- //

/* get and setter */
class Conta {
  // O enderline na frente da variavel é pra não
  // acessar de fora da classe.
  double _saldo = 0.0;
  double _saque = 0.0; 
  
  double get saque {
    return this._saque;
  }
  
  set saque (double saque) {
    if(saque > 0 && saque <= 500){
      this._saque = saque;
    }
  }
}

void main() {
  
  Conta conta = new Conta();
  conta.saque = 400;
  
  print(conta.saque);
}

// --------------------- //

/* Herança */
class Animal {
  String cor = "";
  
  Animal(this.cor);
  
  void dormir(){
    print("Dormir como um");
  }
}

class Passaro extends Animal {
  
  String corBico = "";
  
   Passaro(String cor, this.corBico) : super(cor);
  
  @override
  void dormir(){
    super.dormir();
    print("passaro.");
  }
  
}

class Cao extends Animal {
  
  String corOrelha = "";
  
  Cao(String cor, this.corOrelha) : super(cor);
  
  @override
  void dormir(){
    super.dormir();
    print("cao.");
  }
}

void main() {
  Passaro passaro = new Passaro("azul", "verde");
  passaro.dormir();
  print("Cor passaro: ${passaro.cor} ");
  print("Cor bico passaro: ${passaro.corBico} ");
  
  print("-------");
  
  Cao cao = new Cao("branco", "preto");
  cao.dormir();
  print("Cor cao: "+cao.cor);
  print("Cor orelha: "+cao.corOrelha);

}

// --------------------- //

/* Modificadores static e final */
class Configuracao {
  static String numeroConta = "121231238908";
  
  static void init(){
    print("inicializando");
  }
}

class Conta {
  double saldo = 0.0;
}

void main() {
  print(Configuracao.numeroConta);
  Configuracao.init();
  
  final Conta conta = new Conta();
  conta.saldo = 20;
  print(conta.saldo);
  
  // Acontece um erro pq a conta é final
  //   conta = new Conta();
}

// --------------------- //

/* Interface, Classe abstrata e mixin */

//Interface
abstract class Presidenciavel {
  void elegivel();
}

// Classe abstrata
abstract class Direito {
  
  String deveres = "";
  
  void direito() {
    print("direito de ir e vir");
  }
  
  void outrosDireitos();
}

class Cidadao extends Direito implements Presidenciavel {
  
  @override
  void elegivel() {
    print("agora vc é elegivel");
  }

  @override
  void outrosDireitos() {
    print("outros direitos");
  }
}

/*
 * Mixins é uma maneira de utilizar códigos em 
 * múltiplas hierarquias de classes
 * */
mixin Escrita {
  void escreverArtigo(){
    print("Escrever um artigo");
  }
}

class Irlan with Escrita { 
}

void main() {
  Cidadao cidadao = new Cidadao();
  cidadao.deveres = "ser honesto";
  print(cidadao.deveres);
  cidadao.elegivel();
  cidadao.direito();
  
  Irlan irlan = new Irlan();
  irlan.escreverArtigo();
  
}

// --------------------- //

/* Collection  */
class Usuario {
  String nome = "";
  int idade = 0;
  
  Usuario(this.nome, this.idade);
  
}

void main() {
  var lista = ["morango", "uva", 3];
  List<String> frutas = ["melancia", "laranja"];
  List coisas = ["cadeira", 3];
  
  // adicionar itens
  lista.add("cachorro");
  frutas.add("jaca");
  coisas.add("mesa");
  
  print(lista);
  print(frutas);
  print(coisas);
  print("-----");
  
  // inserir em uma posicao
  lista.insert(0, "computador");
  
  print(lista);
  print(frutas);
  print(coisas);
  print("-----");
  
  // removendo
  
  frutas.remove("melancia");
  coisas.removeAt(0);
  
  print(lista);
  print(frutas);
  print(coisas);
  print("-----");
  
  print(frutas.contains("jaca"));
  print(frutas.length);
  
  print("-----");
  
  var listaUsuarios = new List<Usuario>.generate(1, (i){
    return Usuario("Irlan", 35);
  });
  
  listaUsuarios.add(Usuario("Pedro", 2));
  
  for(Usuario user in listaUsuarios){
    print("Nome: ${user.nome}, idade: ${user.idade}");
  }
}

// --------------------- //

/* Maps */
void main() {
  
  Map frutas = Map();
  frutas["MO"] = "morango";
  
  print("------");
  
  Map<String, String> estados = new Map();
  estados["SP"] = "São Paulo";
  estados["AM"] = "Amazonas";
  
  print(frutas);
  print(estados);
  print(estados.keys);
  print(estados.values);
  print(estados.containsKey("AM"));
  print(estados.containsValue("São Paulo"));
  
  estados.forEach( (chave, valor) 
                  => print("Chave: $chave, valor: $valor") );
  
  
  print("------");
  
  Map<String, dynamic> usuarios = new Map();
  usuarios["nome"] = "irlan carlo";
  usuarios["idade"] = 35;
  
  usuarios.forEach( (chave, valor) 
                   => print("Chave: $chave, valor: $valor"));
  
}
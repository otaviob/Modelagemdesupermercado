import UIKit

class Mercado {
    var nameMercado: String
    var andressMercado: String
    var foneMercado: String
    var cnpj: String
    var comprasOnline: Bool
    var funcionamento: String
    
    init(nomeMercado: String, andressMercado: String, foneMercado: String, cnpj: String, comprasOnline: Bool, funcionamento: String) {
       
        self.nameMercado = nomeMercado
        self.andressMercado = andressMercado
        self.foneMercado = foneMercado
        self.cnpj = cnpj
        self.comprasOnline = comprasOnline
        self.funcionamento = funcionamento
        
    }
    
}

//class funcionario herda valor de Mercado
class Funcionario: Mercado {
    var nameFuncionario: String
    var andressFuncionario: String
    var foneFuncionario: String
    var cpf: String
    var cargo: String
    var matricula: String
    
    init(nomeMercado: String, andressMercado: String, foneMercado: String, cnpj: String, comprasOnline: Bool, funcionamento: String, nameFuncionario: String, andressFuncionario: String, foneFuncionario: String, cpfFuncionario: String, cargo: String, matricula: String){
        
        self.nameFuncionario = nameFuncionario
        self.andressFuncionario = andressFuncionario
        self.foneFuncionario = foneFuncionario
        self.cpf = cpfFuncionario
        self.cargo = cargo
        self.matricula = matricula
        
        super.init(nomeMercado: nomeMercado, andressMercado: andressMercado, foneMercado: foneMercado, cnpj: cnpj, comprasOnline: comprasOnline, funcionamento: funcionamento)
       
    }
}
class Produto: Mercado {
    
    var nomeProduto: String
    var price: Double
    var categoria: String
    var identificador: String
    var validade: String
    var emEstoque: Bool
    
    
    init(nomeProduto: String, price: Double, categoria: String, identificador: String, validade: String, emEstoque: Bool, nomeMercado: String, andressMercado: String, foneMercado: String, cnpj: String, comprasOnline: Bool, funcionamento: String){
        self.nomeProduto = nomeProduto
        self.price = price
        self.categoria = categoria
        self.identificador = identificador
        self.validade = validade
        self.emEstoque = emEstoque
        
        
        super.init(nomeMercado: nomeMercado, andressMercado: andressMercado, foneMercado: foneMercado, cnpj: cnpj, comprasOnline: comprasOnline, funcionamento: funcionamento)
    }
    func refrigerar(){
        print("Refrigerando")
    }
    func checarVencimento(){
        print("Checado")
    }
    func Vender(){
        print("Ok. Vendido")
    }
    func repor(){
        print("Ok. Reposto")
    }
    func destacar(){
        print("Colocado no corredor principal")
    }
}

let josh = Funcionario(nomeMercado: "Condor", andressMercado: "Av Colombo", foneMercado: "XX-XXXX.XXXX", cnpj: "XXXXX", comprasOnline: true, funcionamento: "8 a 18", nameFuncionario: "Joshua", andressFuncionario: "Av. Joao Paulino", foneFuncionario: "XX-XXXX.XXXX", cpfFuncionario: "XXXXXXXXX", cargo: "Caixista", matricula: "21451454121XX")

print("\(josh.nameFuncionario) trabalha no \(josh.nameMercado) que fica na \(josh.andressMercado) \n\(josh.nameFuncionario) trabalha como \(josh.cargo) e sua matricula \(josh.matricula)")

let kayle = Produto(nomeProduto: "Lysol", price: 3.25, categoria: "Limpeza", identificador: "XXXXXX", validade: "24/10/20", emEstoque: true, nomeMercado: "Condor", andressMercado: "Av Colombo", foneMercado: "XX-XXXX.XXXX", cnpj: "XXXXX", comprasOnline: true, funcionamento: "8 a 18")

print("\n -------------------\n")
print("Buscar produto no mercado: \(kayle.nameMercado) \nProduto a ser buscado: \(kayle.nomeProduto)")
print("O Produto: \(kayle.nomeProduto) esta disponivel em estoque? \(kayle.emEstoque)\n \nInformacoes do produto: \nNome do produto: \(kayle.nomeProduto) \nCategoria: \(kayle.categoria) \nIdentificador: \(kayle.identificador) \nValidade: \(kayle.validade)")

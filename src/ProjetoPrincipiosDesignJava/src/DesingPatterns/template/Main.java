package DesingPatterns.template;

class Main {
    public static void main(String[] args) {
        FuncionarioCLT func1 = new FuncionarioCLT(1000);
        System.out.println("Salário Líquido (CLT): " + func1.calcSalarioLiquido());

        FuncionarioPJ func2 = new FuncionarioPJ(1000);
        System.out.println("Salário Líquido (PJ): " + func2.calcSalarioLiquido());
    }
}

// TODO (1): crie uma classe abstrata Funcionario, com o atributo salario e
// os três métodos de desconto declarados como abstratos
// (calcDescontosPrevidencia, calcDescontosPlanoSaude, calcOutrosDescontos).
// TODO (2): mova o método calcSalarioLiquido() (o "template method") para
// esta classe abstrata — ele deve continuar chamando os três métodos
// abstratos, mas agora existir em um único lugar.
// TODO (3): faça FuncionarioCLT e FuncionarioPJ estenderem Funcionario,
// removendo o atributo salario e o método calcSalarioLiquido() duplicados,
// e mantendo apenas as implementações específicas dos três métodos de
// desconto.
// TODO (4) no Main: precisa mudar alguma coisa na forma de usar
// FuncionarioCLT e FuncionarioPJ depois da refatoração?
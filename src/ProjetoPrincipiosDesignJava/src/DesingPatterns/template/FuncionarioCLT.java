package DesingPatterns.template;

class FuncionarioCLT {

    protected double salario;

    public FuncionarioCLT(double salario) {
        this.salario = salario;
    }

    double calcDescontosPrevidencia() {
        return salario * 0.1;
    }

    double calcDescontosPlanoSaude() {
        return 100.0;
    }

    double calcOutrosDescontos() {
        return 20.0;
    }

    // Problema: o "esqueleto" do cálculo (salário menos os três descontos)
    // está duplicado nesta classe e também em FuncionarioPJ, logo abaixo.
    // Se amanhã precisarmos mudar a fórmula geral (por exemplo, adicionar um
    // novo tipo de desconto para todos os funcionários), teremos que lembrar
    // de alterar essa lógica em todas as subclasses que a duplicam.
    public double calcSalarioLiquido() {
        double prev = calcDescontosPrevidencia();
        double saude = calcDescontosPlanoSaude();
        double outros = calcOutrosDescontos();
        return salario - prev - saude - outros;
    }
}
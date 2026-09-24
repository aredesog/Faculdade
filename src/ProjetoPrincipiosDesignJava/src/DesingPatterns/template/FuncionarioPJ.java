package DesingPatterns.template;

class FuncionarioPJ {

    protected double salario;

    public FuncionarioPJ(double salario) {
        this.salario = salario;
    }

    double calcDescontosPrevidencia() {
        return 0.0; // PJ não tem desconto de previdência na folha
    }

    double calcDescontosPlanoSaude() {
        return 50.0;
    }

    double calcOutrosDescontos() {
        return salario * 0.05; // imposto sobre nota fiscal, por exemplo
    }

    // Mesmo "esqueleto" de cálculo, duplicado
    public double calcSalarioLiquido() {
        double prev = calcDescontosPrevidencia();
        double saude = calcDescontosPlanoSaude();
        double outros = calcOutrosDescontos();
        return salario - prev - saude - outros;
    }
}
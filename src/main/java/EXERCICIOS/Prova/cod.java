package EXERCICIOS.Prova;

public class cod { // Atributos privados (encapsulamento)     
    private String numero;     
    private double saldo;          
    
    // Construtor     
    public cod(String numero, double saldoInicial) {         
        this.numero = numero;         
        this.saldo = saldoInicial;     }          
        
    // Métodos públicos para acessar e modificar (getters/setters)     
    public String getNumero() {         
        return numero;     }          
            
    public double getSaldo() {         
        return saldo;     }          
        // Método com lógica de validação (encapsulamento)     
    public boolean sacar(double valor) {        
        if (valor > 0 && valor <= saldo) {            
            saldo -= valor;             
            System.out.println("Saque de R$ " + valor + " realizado.");            
             return true;         }         
             
             System.out.println("Saldo insuficiente!");         
             return false;     
            }          
            public void depositar(double valor) {         
                if (valor > 0) {             
                    saldo += valor;             
                    System.out.println("Depósito de R$ " + valor + " realizado.");         
                }     
            } 
        } 

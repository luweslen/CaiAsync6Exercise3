/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author AI-Dev1
 */
public class Pessoa implements java.io.Serializable {
    private String nome;
    private String idade;
    
    public Pessoa() {
        this.idade="30";
        this.nome="Fulano de Tal";
    }
	
    public String getNome() {
        return nome;
    }
	
    public void setNome(String nome) {
        this.nome = nome;
    } 
	
    public String getIdade() {
        return idade;
    }
	
    public void setIdade(String idade) {
        this.idade = idade;
    }    
}


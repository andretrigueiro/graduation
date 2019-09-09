#include <iostream>
#include "concessionaria.h"

    Concessionaria::Concessionaria(){}

    Concessionaria::Concessionaria(std::string _nome, std::string _cnpj, int _estoque_auto):
                nome(_nome), cnpj(_cnpj), estoque_auto(_estoque_auto) {}

    Concessionaria::~Concessionaria(){}

    void Concessionaria::set_nome(std::string valor_nome){
        nome = valor_nome;
    }

    void Concessionaria::set_cnpj(std::string valor_cnpj){
        cnpj = valor_cnpj;
    }
    void Concessionaria::set_estoque_auto(int valor_estoque_auto){
        estoque_auto = valor_estoque_auto;
    }

#ifndef CONCESSIONARIA_H
#define CONCESSIONARIA_H

#include <iostream>
#include <vector>
#include <string>
#include "automovel.h"

class Concessionaria {

public:
    Concessionaria();
    Concessionaria(std::string _nome, std::string _cnpj, int estoque_auto);
    ~Concessionaria();

private:
    std::string nome;
    std::string cnpj;
    int estoque_auto;

    void set_nome(std::string valor_nome);
    void set_cnpj(std::string valor_cnpj);
    void set_estoque_auto(int valor_estoque_auto);

};


#endif
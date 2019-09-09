#include <iostream>

#include "automovel.h"


Automovel::Automovel(){}

Automovel::Automovel(std::string _marca, double _preco, int _chassi, std::string _data_fabricacao):
        marca(_marca), preco(_preco), chassi(_chassi), data_fabricacao(_data_fabricacao) {}

Automovel::~Automovel(){}

void Automovel::set_marca( std::string valor_marca){
    marca = valor_marca;
}

void Automovel::set_preco( double valor_preco){
    preco = valor_preco;
}

void Automovel::set_chassi( int valor_chassi){
    chassi = valor_chassi;
}

void Automovel::set_data_fabricacao( std::string valor_fab){
    data_fabricacao = valor_fab;
}
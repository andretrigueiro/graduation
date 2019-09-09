#ifndef AUTOMOVEL_H
#define AUTOMOVEL_H

#include <string>

class Automovel {

public:
    Automovel();
    Automovel(std::string _marca, double _preco, int _chassi, std::string _data_fabricacao);
    ~Automovel();

private:
    std::string marca;
    double preco;
    int chassi;
    std::string data_fabricacao;

    void set_marca(std::string valor_marca);
    void set_preco(double valor_preco);
    void set_chassi(int valor_chassi);
    void set_data_fabricacao(std::string valor_fab);

};

#endif
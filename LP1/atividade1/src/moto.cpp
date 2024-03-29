#include "../include/moto.h"

using namespace std;

/**
 * Constructors and Destructors
 */

//Construtor Padrão
Moto::Moto() {}

//Destrutor Padrão
Moto::~Moto() {}

//Construtor com parâmetro, utilizando as propriedades do veículo
Moto::Moto(string marca, string chassi, float preco, int _dia, int _mes, int _ano, string modelo)
{
  setMarca(marca);
  setChassi(chassi);
  setPreco(preco);
  setDiaDataDeFabricacao(_dia);
  setMesDataDeFabricacao(_mes);
  setAnoDataDeFabricacao(_ano);
  setModelo(modelo);
}

/**
 * Getters
 */

string Moto::getModelo()
{
  return this->modelo;
}

/**
 * Setters
 */

void Moto::setModelo(string _modelo)
{
  this->modelo = _modelo;
}
#ifndef AUTOMOVEL_H
#define AUTOMOVEL_H

#include <iostream>
#include <string>

#include "veiculo.h"

using namespace std;

/**
 * Classe de Veículos do tipo Automovel
 */

class Automovel : public Veiculo
{
private:

  /**
   * Properties
   * Atributos especificos desta classe
   */

  string motor;

public:

  /**
   * Getters
   * Funções para acessar os valores dos atributos da classe
   */

  string getMotor();

  /**
   * Setters
   * Funções para determinar os valores dos atributos da classe
   */

  void setMotor(string _motor);

  /**
   * Constructors and Destructors
   * Contrutor padrão, por parâmetro e destrutor da classe
   */

  Automovel();
  Automovel(string marca, string chassi, float preco, int _dia, int _mes, int _ano, string motor);
  ~Automovel();

};

#endif
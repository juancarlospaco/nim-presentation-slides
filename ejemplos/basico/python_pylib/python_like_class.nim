
import pylib
import strutils, strformat

type Customer = ref object
  name: string
  balance: float


class Customer(object):
  """Customer Python-like Class.
  Atributos:
      name: Nombre.
      balance: Balance de cuenta.
  """

  def init(self, name, balance=0.0):
      """Un poquito de Nim alla, nada mas viejo. Es lo unico!."""
      self.name = name
      self.balance = balance

  def withdraw(self, amount):
      """Return the balance remaining after withdrawing amount."""
      if amount > self.balance:
          raise newException(ValueError, "Amount es mas grande que el Balance.")
      self.balance -= amount
      return self.balance

  def deposit(self, amount):
      """Return the balance remaining after depositing amount."""
      self.balance += amount
      return self.balance



let usuaria = newCustomer("Melltrosso Deborah", 500)

print(usuaria.name)
print(fmt"Sacara $ 250, queda  { usuaria.withdraw(250.0) }")
print(fmt"Agrega $ 1337, queda { usuaria.deposit(1337.0) }")

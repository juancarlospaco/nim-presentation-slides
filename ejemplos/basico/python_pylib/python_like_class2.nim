import pylib, strformat

type Shape = ref object
  x, y: float
  description, author: string


class Shape:
  def init(self, x, y):
    self.x = x
    self.y = y
    self.author = "Leo Thuzmeyl"
    self.description = """Is this the real "Nim" ?, Is this just 'Python' ?,
                          Caught in a `landslide`, no escape from ``reality``."""

  def area(self):
    return self.x * self.y

  def perimeter(self):
    return 2 * self.x + 2 * self.y

  def describe(self, text):
    self.description = text

  def authorName(self, text):
    self.author = text

  def scaleSize(self, scale):
    self.x = self.x * scale
    self.y = self.y * scale



let formita = newShape(5.0, 15.3)

print(fmt"El Area es {formita.area()}")
print(fmt"El Perimetro es {formita.perimeter()}")
print(formita.description)

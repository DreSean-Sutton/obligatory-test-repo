class Vehicle:
  def __init__(self, started: bool = False, speed: int = 0):
    self.started = started
    self.speed = speed
    print("Vehicle created!")

  def start(self):
    self.started = True
    print("Car started, let's ride!")

  def increase_speed(self, delta):
    if self.started:
      self.speed = self.speed + delta
      print('Vrooooom!')
    else:
      print('You need to start the car first!')

  def stop(self):
    self.speed = 0
    print('Halting')

class Car(Vehicle):
  trunk_open = False
  def open_trunk(self):
    if(not self.trunk_open):
      self.trunk_open = True
      return print('Trunk opened!')
    print('Trunk already open!')

  def close_trunk(self):
    if(not self.trunk_open):
      self.trunk_open = False
      return print('Trunk closed!')
    print('Trunk already closed!')

class Motorcycle(Vehicle):
  def __init__(self, center_stand_out = False):
    self.center_stand_out = center_stand_out
    super().__init__()

car = Car()
car.increase_speed(10)
car.start()
car.increase_speed(40)
print(car.speed)

car1 = Car(True, 100)
print(f'car1.started: {car1.started}, car1.speed: {car1.speed}')

motorcycle = Motorcycle(True)
print(motorcycle.center_stand_out)
motorcycle.start()

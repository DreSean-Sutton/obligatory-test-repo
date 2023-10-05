import random

class RandomTaskFactory():
  tasks = [
    "Learn to code",
    "Focus on first project",
    "Take important breaks",
    "Studying flashcards",
    "Read python books",
    "Focus on other project",
  ]

  def __init__(self, low: int = 0, high: int = len(tasks) - 1):
    self.low = low
    self.high = high

    if self.low >= self.high:
      raise ValueError('arg1 cannot be higher than arg2')
    elif self.low >= len(self.tasks) or self.high >= len(self.tasks):
      raise ValueError(f'arg1 and arg2 must be less than {len(self.tasks) - 1}')

  def get_random_int(self):
    return random.randint(self.low, self.high)

  def get_random_task(self):
    return self.tasks[self.get_random_int()]

random_task = RandomTaskFactory(2, 50)
try:
  print(random_task.get_random_task())
except ValueError as e:
  print(f"Error: {e}")

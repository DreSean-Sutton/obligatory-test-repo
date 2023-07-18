
def check_instance(data, datatype):
  if isinstance(data, datatype): # Use isinstance instead of if type(2):
    return True
  else:
    return False

def tuples():
  person = ('Dre', 28, 'male')
  name, age, gender = person
  print(age) #28
  print(f'length: {len(person)}') # 3
  return name, age, gender

print(check_instance(2, int)) # True
tuples() # 28

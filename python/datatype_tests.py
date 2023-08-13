
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

def lists():
  my_list1 = [1, 2, 3, 4, 5]
  my_list2 = ['a', 'b', 'c', 'd', 'e']
  empty_list = []
  range_list = list(range(1, 4)) # [1, 2, 3]
  set_to_list = list({1, 2, 2, 2, 2, 3}) # [1, 2, 3]
  my_list1.append(6) # [1, 2, 3, 4, 5, 6]
  combine_lists = my_list1 + my_list2 # [1, 2, 3, 4, 5, 6, 'a', 'b', 'c', 'd', 'e']
  last = combine_lists.pop() # ['e']
  first = combine_lists.pop(0) # [1]
  del(my_list1[0]) # [2, 3, 4 , 5 , 6]
  my_list1.remove(5) # [2, 3, 4, 6]
  my_list2.append('e')
  my_list2.count('e') # 2
  result = 2 in my_list1 # True
  my_list2.index('e') # 3
  for n in my_list1:
    print(n)
  slice_list = my_list1[1:3]
  print(slice_list) # [3, 4]
  step_list = my_list1[::2] # [2, 4, 6]
  unsorted_list = [5, 2, 8, 1, 7]
  unsorted_list.sort() # [1, 2, 5, 7, 8]

def sets():
  my_set1 = {1, 2, 3, 4, 5}
  my_set2 = {3, 4, 5, 6, 7}
  my_set1.add(6) # {1, 2, 3, 4, 5, 6}
  my_set1.remove(5) # {1, 2, 3, 4, 6}
  my_set1.discard(6) # {1, 2, 3, 4}
  my_set1.pop() # {1, 2, 3, 4, 6}
  my_set1.clear() # set()
  my_set1.update(range(1, 6)) # {1, 2, 3, 4, 5}
  only_present_in_1 = my_set1-my_set2 # {1, 2}
  only_present_in_2 = my_set2-my_set1 # {6, 7}
  symetric_difference = my_set1^my_set2 # {1, 2, 6, 7}
  intersection = my_set1&my_set2 # {3, 4, 5}
  subset_of_set2 = my_set1 < my_set2 # false. Must contain all elements of my_set2.
  union = my_set1 | my_set2 # {1, 2, 3, 4, 5, 6, 7}

print(check_instance(2, int)) # True
my_info = tuples()
print(my_info) # ('Dre', 28,'male')
print(lists())
print(sets())

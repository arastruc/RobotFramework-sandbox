from robot.api.deco import keyword

class comparison(object):
   """
   """

   def __init__(self):
      pass

   @keyword('Expect ${first_number} greater than ${second_number}')
   def _greater_than(self, first_number, second_number):
      if (int(first_number) < int(second_number)):
         raise ValueError(f'Second_number {second_number} is higher or equal to the first_number {first_number}.')
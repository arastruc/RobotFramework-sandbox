from robot.api.deco import keyword

class comparison(object):
   """
   """

   def __init__(self):
      pass

   @keyword('Expect ${count} is multiple')
   def _multiple_count(self, count):
      if (int(count) < 2):
         raise ValueError(f'{count} is multiple.')
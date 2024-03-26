# import csv

from robot.api.deco import keyword
import csv
import json


class csv_file(object):
   """
   """

   def __init__(self):
      pass

   @keyword('Read CSV from path ${filePath}')
   def read_csv_file(self, filePath):
        with open(filePath, 'r') as file:
            csv_reader = csv.DictReader(file)
            return [row for row in csv_reader]
   
   @keyword('Read Json from path ${filePath}')
   def read_json_file(self, filePath):
        with open(filePath, 'r') as json_file:
            return json.load(json_file)
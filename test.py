from __init__ import app, db
from model import Part, Phone, PhoneType, PartType
import unittest
import json
import requests
import random
import datatime

class apiTest(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()

'''
    def test_purchase_parts(self):
        param = {
            'part_type' : 'screenHigh',
            'part_ammount': 10
        }
        current_num_part = len(PartType.query.filter_by(partName='screenHigh').all())
        resp = self.app.post('/invenory/parts/accounting', data=param)
        new_num_part = len(PartType.query.filter_by(partName='screenHigh').all().count())
        self.assertEqual(new_num_part, current_num_part + 10)
'''
    def test_send_part_information(self):
        resp = self.app.get('/inventory/get-parts/{}/{}'.format(2, 2))
        data = json.loads(resp.data.decode('utf-8'))
        self.assertEqual(resp.status_code, 200)
        self.assertEqual(len(data), 2)
        for part in data: 
            self.assertEqual(data['partTypeId'], 2)
     
    def test_send_broken_phones(self):
        resp = self.app.get('/inventory/send/')
        data = json.loads(resp.data.decode('utf-8'))
        self.assertEqual(resp.status_code, 200)
        for phone in data:
            self.assertEqual(phone['status'], 'Broken')

    def test_all_phone_models(self):
        resp = self.app.get('/inventory/models/all/')
        data = json.loads(resp.data.decode('utf-8'))
        self.assertEqual(resp.status_code, 200)
        self.assertEqual(len(data), len(PhoneType.query.all()))
'''   
    def test_return_specific_model(self):
        resp = self.app.get('/inventory/models/{}'.format(1))
        data = json.loads(resp.text.encode('utf-8'))
        self.assertEqual(resp.status_code,200)
        self.assertEqual(data['phoneType'], 'High')
        self.assertEqual(data['screenTypeId'], 1)
        self.assertEqual(data['batteryTypeId'], 6)
        self.assertEqual(data['memoryTypeId'], 10)
        self.assertEqual(data['description'], 'Top Tier Phone')
        self.assertEqual(data['imagePath'], 'static/images/high.png')
        self.assertEqual(data['price'], 600.00)
'''
'''
    def test_mark_as_returned(self):
        resp = self.app.get('/inventory/phone/return/{}'.format(1))
        self.assertEqual(resp.status_code, 200)
'''     
    def test_get_phones(self):
        resp = self.app.get('/inventory/phone/order/{}/{}'.format(2,2))
        data = json.loads(resp.data.decode('utf-8'))
        self.assertEqual(resp.status_code,200)
        self.assetTrue(len(data) <= 2)
        for phone in data: 
            self.assertEqual(phone['id'], 2)
'''
    def test_mark_as_bogo(self):
        resp = self.app.get('/inventory/phone/mark_bogo/{}/'.format(2))
        data = json.loads(resp.data.decode('utf-8'))
        self.assertEqual(resp.status_code, 200)
        self.assertEqual(data['bogo'], 1)
'''
    def test_get_phone_by_id(self):
        resp = self.app.get('/inventory/phones/{}'.format(2))
        data = json.loads(resp.data.decode('utf-8'))
        self.assertEqual(resp.status_code, 200)
        self.assertEqual(data['id'], 2)
        self.assertEqual(data['status'], 'Broken')
        self.assertEqual(data['modelId'], 2)

        
if __name__ == "__main__":
    unittest.main()
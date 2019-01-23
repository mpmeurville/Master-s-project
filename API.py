#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr 19 13:17:54 2018

@author: marie
"""
import json
import requests

web='http://omabrowser.org/api'

def get_species():
    api_url='{}/api/taxonomy/'.format(web)
    
    response= requests.get(api_url, 'STAA4' )
    if response.status_code == 200:
        return json.loads(response.content.decode('utf-8'))
    else:
        return None
    
test=get_species()


if test is not None:
    print("Here's your info: ")
    for k, v in test['account'].items():
        print('{0}:{1}'.format(k, v))

else:
    print('[!] Request Failed')
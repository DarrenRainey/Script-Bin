#!/usr/bin/python																			# Use python 2.7
from fbchat import Client																	# Import fbcat modules
from fbchat.models import *																	# Import fbcat modules

client = Client('you@email.com', 'YourPassword')											# Login
thread_id = '4' 																			# User ID you want to send the message to
thread_type = ThreadType.USER																# USER or GROUP
client.send(Message(text='Hello I'm a bot'), thread_id=thread_id, thread_type=thread_type)	# Send the message
client.logout()																				# Logout

import time
import datetime
from uuid import uuid4

from mongo_example.storage import MongodbService

storage = MongodbService.get_instance()

for _ in range(5):
    dto = {
        "_id": str(uuid4()),
        "payload": f'the time is: {datetime.datetime.now().strftime("%d.%m.%Y %H:%M:%S")}',
        "field2": str(int(time.time()))
    }
    storage.save_data(dto)

for data in storage.get_data():
    print(data)

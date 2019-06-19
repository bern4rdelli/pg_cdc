import psycopg2
from psycopg2 import extras
from select import select
from datetime import datetime

def consume(msg):
    print("************")
    print(msg.payload)
    msg.cursor.send_feedback(flush_lsn=msg.data_start)


conn = psycopg2.connect('dbname=test user=bernardelli password=bernardelli',
   connection_factory=psycopg2.extras.LogicalReplicationConnection)
cursor = conn.cursor()


# cursor.create_replication_slot('pytest_iot', output_plugin='test_decoding')
cursor.start_replication(slot_name='pytest_iot', decode=True)

status_interval = 10.0
while True:
    msg = cursor.read_message()
    if msg:
        consume(msg)
    else:
        now = datetime.now()
        timeout = status_interval - (now - cursor.feedback_timestamp).total_seconds()
        try:
            sel = select([cursor], [], [], max(0, timeout))
        except InterruptedError:
            pass  # recalculate timeout and continue
import RPi.GPIO as GPIO
import time

Pin = 26  # GPIO Pin 26

GPIO.setmode(GPIO.BCM)

# Setup light sensor pin status
GPIO.setup(Pin, GPIO.OUT)
GPIO.output(Pin, GPIO.LOW)
time.sleep(0.5)
GPIO.output(Pin, GPIO.HIGH)
GPIO.setup(Pin, GPIO.IN)

try:
    i = 0
    while True:
        v = GPIO.input(Pin)
        if v == GPIO.LOW:
            print("低亮度")
        if v == GPIO.HIGH:
            print("高亮度")
        time.sleep(2)

except KeyboardInterrupt:
    pass

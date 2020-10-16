import time, sys, os
from tkinter import *
N=0
reset=False
MyWindow = Tk()
MyWindow.geometry("600x400+300+200")
MyWindow.title("La Suite de Fibonacci")
l=Label(MyWindow, text="La suite de Fibonacci")
l.place(relx=0.4, rely=0)
frame=Frame(MyWindow, bg='white')
frame.place(relx=0.1,rely=0.1,relwidth=0.8,relheight=0.8)

def FibonacciSuite(N):
    if N <= 1:
        return N
    else:
        return (FibonacciSuite(N - 1) + FibonacciSuite(N - 2))
def stop():
    MyWindow.quit()

def display():
    #to display the Fibonacci Sequence
    if reset is False:
        global N
        s=Label(frame,text=FibonacciSuite(N))
        s.pack()
        N = N + 1
        changeFibo()

def changeFibo():
    frame.after(1000, display)

def wait():
    time.sleep(1)
    startButton['command'] = start
    startButton['bg'] = "green"
    startButton['text'] = "Start"
    time.sleep(1)
    global reset
    reset=False

def Reset():
    global reset
    global N
    reset=True
    wait()
    N=0
    startButton['command'] = stop
    startButton['bg'] = "red"
    startButton['text'] = "Stop"

def start():
    """no loop can be used because otherwise
    it will interfere with the Window mainloop"""
    startButton['command'] = stop
    startButton['bg'] = "red"
    startButton['text'] = "Stop"
    changeFibo()



startButton = Button(frame, height=2, width=20, text="Start", command=start, bg="green", fg="white")
resetButton = Button(frame, height=2, width=20, text="Reset", command=Reset, bg="blue", fg="white")
startButton.place(relx=0.1,rely=0.8)
resetButton.place(relx=0.6,rely=0.8)

MyWindow.mainloop()

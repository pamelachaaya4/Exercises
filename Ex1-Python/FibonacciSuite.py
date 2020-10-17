import time, sys, os
from tkinter import *
N=0
reset=False
run=True
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
    global run
    run=False
    startButton['command'] = start
    startButton['bg'] = "green"
    startButton['text'] = "Start"

def display():
    #to display the Fibonacci Sequence
    global run
    global reset
    global N
    if reset is False and run is True:
        s=Label(frame,text=FibonacciSuite(N),padx=40,pady=40)
        s.pack()
        N = N + 1
        s.after(1000,s.destroy)
        changeFibo()
        if run is False:
            Label(frame, text=FibonacciSuite(N), padx=40, pady=40).pack()
            s.after_cancel(changeFibo)



def changeFibo():
    frame.after(1000,display)

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
    global run
    reset=True
    run=False
    wait()
    N=0

def start():
    """no loop can be used because otherwise
    it will interfere with the Window mainloop"""
    global run
    run=True
    startButton['command'] = stop
    startButton['bg'] = "red"
    startButton['text'] = "Stop"
    changeFibo()



startButton = Button(frame, height=2, width=20, text="Start", command=start, bg="green", fg="white")
resetButton = Button(frame, height=2, width=20, text="Reset", command=Reset, bg="blue", fg="white")
startButton.place(relx=0.1,rely=0.8)
resetButton.place(relx=0.6,rely=0.8)

MyWindow.mainloop()

from Tkinter import Tk, Frame, Button

class App:
    def __init__(self, master):
        frame = Frame(master)
        frame.pack()

        self.quitButton = Button(frame, text='Quit', fg='red', command=frame.quit)
        self.quitButton.pack()

        self.helloButton = Button(frame, text='Hello', command=self.sayHi)
        self.helloButton.pack()

    def sayHi(self):
        print 'Hi there!'
 
top = Tk()

app = App(top)
 
top.mainloop()
top.destroy()

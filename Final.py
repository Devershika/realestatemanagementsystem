from tkinter import *
from tkinter import messagebox
from tkinter import ttk
import pymysql

class RealEstateManagement:
    def __init__(self, root):
        self.root = root
        self.root.title("Real Estate Management System")
        self.root.geometry("1350x700+0+0")

        # Initialize login screen
        self.login_screen()

    def login_screen(self):
        self.clear_screen()
        self.root.title("Login")
        
        # Frame for login details
        login_frame = Frame(self.root, bd=4, relief=RIDGE, bg="steel blue")
        login_frame.place(x=450, y=150, width=400, height=400)
        root.resizable(False,False)

        # Title
        title = Label(login_frame, text="Login", font=("Helvetica", 30, "bold"), bg="steel blue", fg="white")
        title.pack(side=TOP, fill=X)

        # Username & Password fields
        Label(login_frame, text="Username", bg="steel blue", fg="white", font=("Helvetica", 18, "bold")).place(x=20, y=100)
        self.username_var = StringVar()
        Entry(login_frame, textvariable=self.username_var, font=("Helvetica", 15, "bold"), bd=5, relief=GROOVE).place(x=150, y=100)

        Label(login_frame, text="Password", bg="steel blue", fg="white", font=("Helvetica", 18, "bold")).place(x=20, y=160)
        self.password_var = StringVar()
        Entry(login_frame, textvariable=self.password_var, show='*', font=("Helvetica", 15, "bold"), bd=5, relief=GROOVE).place(x=150, y=160)

        # Buttons for Login and Register
        Button(login_frame, text="Login", width=12, command=self.login, bg="light blue", font=("Helvetica", 12)).place(x=150, y=220)
        Button(login_frame, text="Register", width=12, command=self.register_screen, bg="light blue", font=("Helvetica", 12)).place(x=150, y=270)

    def register_screen(self):
        self.clear_screen()
        self.root.title("Register")

        # Frame for registration details
        register_frame = Frame(self.root, bd=4, relief=RIDGE, bg="steel blue")
        register_frame.place(x=450, y=150, width=400, height=400)

        # Title
        title = Label(register_frame, text="Register", font=("Helvetica", 30, "bold"), bg="steel blue", fg="white")
        title.pack(side=TOP, fill=X)

        # Username & Password fields
        Label(register_frame, text="Username", bg="steel blue", fg="white", font=("Helvetica", 18, "bold")).place(x=20, y=100)
        self.reg_username_var = StringVar()
        Entry(register_frame, textvariable=self.reg_username_var, font=("Helvetica", 15, "bold"), bd=5, relief=GROOVE).place(x=150, y=100)

        Label(register_frame, text="Password", bg="steel blue", fg="white", font=("Helvetica", 18, "bold")).place(x=20, y=160)
        self.reg_password_var = StringVar()
        Entry(register_frame, textvariable=self.reg_password_var, show='*', font=("Helvetica", 15, "bold"), bd=5, relief=GROOVE).place(x=150, y=160)

        # Register Button
        Button(register_frame, text="Register", width=12, command=self.register, bg="light blue", font=("Helvetica", 12)).place(x=150, y=220)

    def connect_database(self):
        return pymysql.connect(host='localhost', user='root', password='2701', database='RealEstateManagement')

    def login(self):
        conn = self.connect_database()
        cursor = conn.cursor()
        query = "SELECT * FROM users WHERE username = %s AND password = %s"
        cursor.execute(query, (self.username_var.get(), self.password_var.get()))
        row = cursor.fetchone()
        conn.close()
        if row:
            self.main_screen()
        else:
            messagebox.showerror("Error", "Invalid Username or Password")

    def register(self):
        if self.reg_username_var.get() == "" or self.reg_password_var.get() == "":
            messagebox.showerror("Error", "All fields are required")
            return

        conn = self.connect_database()
        cursor = conn.cursor()
        query = "SELECT * FROM users WHERE username = %s"
        cursor.execute(query, (self.reg_username_var.get(),))
        row = cursor.fetchone()

        if row:
            messagebox.showerror("Error", "Username already exists")
        else:
            query = "INSERT INTO users (username, password) VALUES (%s, %s)"
            cursor.execute(query, (self.reg_username_var.get(), self.reg_password_var.get()))
            conn.commit()
            messagebox.showinfo("Success", "Registration successful")
            self.login_screen()
        conn.close()

    def main_screen(self):
        self.clear_screen()
        self.root.title("Real Estate Management System")

        # Main Frame
        title = Label(self.root, text="Real Estate Management System", bd=10, relief=GROOVE, 
                      font=("Helvetica", 40, "bold"), bg="sky blue", fg="white")
        title.pack(side=TOP, fill=X)

        # Variables
        self.Owner_ID_var = StringVar()
        self.Owner_Type_var = StringVar()
        self.Society_Name_var = StringVar()
        self.Price_var = StringVar()
        self.Room_var = StringVar()

        # Frames for Input and Table Display
        self.manage_frame = Frame(self.root, bd=4, relief=RIDGE, bg="steel blue")
        self.manage_frame.place(x=20, y=100, width=450, height=580)

        self.detail_frame = Frame(self.root, bd=4, relief=RIDGE, bg="steel blue")
        self.detail_frame.place(x=500, y=100, width=800, height=580)

        # Input Fields and Labels in Manage Frame
        Label(self.manage_frame, text="Owner ID", bg="steel blue", fg="white", font=("Helvetica", 18, "bold")).grid(row=0, column=0, pady=10, padx=20, sticky="w")
        Entry(self.manage_frame, textvariable=self.Owner_ID_var, font=("Helvetica", 15, "bold"), bd=5, relief=GROOVE).grid(row=0, column=1, pady=10, padx=20, sticky="w")

        Label(self.manage_frame, text="Owner Type", bg="steel blue", fg="white", font=("Helvetica", 18, "bold")).grid(row=1, column=0, pady=10, padx=20, sticky="w")
        Entry(self.manage_frame, textvariable=self.Owner_Type_var, font=("Helvetica", 15, "bold"), bd=5, relief=GROOVE).grid(row=1, column=1, pady=10, padx=20, sticky="w")

        Label(self.manage_frame, text="Society Name", bg="steel blue", fg="white", font=("Helvetica", 18, "bold")).grid(row=2, column=0, pady=10, padx=20, sticky="w")
        Entry(self.manage_frame, textvariable=self.Society_Name_var, font=("Helvetica", 15, "bold"), bd=5, relief=GROOVE).grid(row=2, column=1, pady=10, padx=20, sticky="w")

        Label(self.manage_frame, text="Price", bg="steel blue", fg="white", font=("Helvetica", 18, "bold")).grid(row=3, column=0, pady=10, padx=20, sticky="w")
        Entry(self.manage_frame, textvariable=self.Price_var, font=("Helvetica", 15, "bold"), bd=5, relief=GROOVE).grid(row=3, column=1, pady=10, padx=20, sticky="w")

        Label(self.manage_frame, text="Room", bg="steel blue", fg="white", font=("Helvetica", 18, "bold")).grid(row=4, column=0, pady=10, padx=20, sticky="w")
        Entry(self.manage_frame, textvariable=self.Room_var, font=("Helvetica", 15, "bold"), bd=5, relief=GROOVE).grid(row=4, column=1, pady=10, padx=20, sticky="w")

        # Buttons for CRUD operations
        btn_frame = Frame(self.manage_frame, bd=4, relief=RIDGE, bg="steel blue")
        btn_frame.place(x=15, y=500, width=420)

        Button(btn_frame, text="Add Owner", width=12, command=self.insert_owner, bg="light blue", font=("Helvetica", 12)).grid(row=0, column=0, padx=10, pady=10)
        Button(btn_frame, text="Delete Owner", width=12, command=self.delete_owner, bg="light blue", font=("Helvetica", 12)).grid(row=0, column=1, padx=10, pady=10)
        Button(btn_frame, text="Show Owners", width=12, command=self.show_owners, bg="light blue", font=("Helvetica", 12)).grid(row=0, column=2, padx=10, pady=10)

        # Treeview for display
        self.table_frame = Frame(self.detail_frame, bd=4, relief=RIDGE, bg="sky blue")
        self.table_frame.place(x=10, y=70, width=760, height=500)

        scroll_x = Scrollbar(self.table_frame, orient=HORIZONTAL)
        scroll_y = Scrollbar(self.table_frame, orient=VERTICAL)

        self.owner_table = ttk.Treeview(self.table_frame, columns=("id", "type", "society", "price", "room"), xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
        scroll_x.pack(side=BOTTOM, fill=X)
        scroll_y.pack(side=RIGHT, fill=Y)

        scroll_x.config(command=self.owner_table.xview)
        scroll_y.config(command=self.owner_table.yview)

        self.owner_table.heading("id", text="Owner ID")
        self.owner_table.heading("type", text="Owner Type")
        self.owner_table.heading("society", text="Society Name")
        self.owner_table.heading("price", text="Price")
        self.owner_table.heading("room", text="Room")
        self.owner_table['show'] = 'headings'

        self.owner_table.column("id", width=100)
        self.owner_table.column("type", width=150)
        self.owner_table.column("society", width=150)
        self.owner_table.column("price", width=100)
        self.owner_table.column("room", width=100)
        
        self.owner_table.pack(fill=BOTH, expand=1)

    def clear_screen(self):
        for widget in self.root.winfo_children():
            widget.destroy()

    def insert_owner(self):
        conn = self.connect_database()
        cursor = conn.cursor()
        query = "INSERT INTO Owner_details (owner_id, OWNer_TYPE, SOCIETY_NAME, Price, Room) VALUES (%s, %s, %s, %s, %s)"
        cursor.execute(query, (self.Owner_ID_var.get(), self.Owner_Type_var.get(), self.Society_Name_var.get(), self.Price_var.get(), self.Room_var.get()))
        conn.commit()
        conn.close()
        self.show_owners()

    def delete_owner(self):
        conn = self.connect_database()
        cursor = conn.cursor()
        query = "DELETE FROM Owner_details WHERE owner_id = %s"
        cursor.execute(query, (self.Owner_ID_var.get(),))
        conn.commit()
        conn.close()
        self.show_owners()

    def fetch_owners(self):
        conn = self.connect_database()
        cursor = conn.cursor()
        query = """
        SELECT 
            owner_id, 
            OWNer_TYPE, 
            SOCIETY_NAME, 
            Price, 
            Room 
        FROM Owner_details
        """
        cursor.execute(query)
        rows = cursor.fetchall()
        conn.close()
        return rows

    def show_owners(self):
        rows = self.fetch_owners()
        if len(rows) != 0:
            self.owner_table.delete(*self.owner_table.get_children())
            for row in rows:
                self.owner_table.insert('', END, values=row)

root = Tk()
app = RealEstateManagement(root)
root.mainloop()

import subprocess as sp
import pymysql
import pymysql.cursors

def option1():
    """
    Function to implement option 1
    """
    tmp = sp.call('clear', shell=True)
    print("Enter your choice:")
    print("1. Add a new candidate")
    print("2. Add a new voter")
    print("3. Add a new political party")
    ch = int(input("Enter choice> "))

    if ch == 1:
        print("Enter candidate details:")
        candidate_id = int(input("Enter candidate id: "))
        name = input("Enter candidate name: ")
        aadhar_no = int(input("Enter candidate aadhar no: "))
        source_of_funding = input("Enter candidate source of funding: ")
        total_donations = int(input("Enter candidate total donations: "))
        total_funding_received = int(input("Enter candidate total funding received: "))
        total_expenditure = int(input("Enter candidate total expenditure: "))
        party_id = int(input("Enter candidate party id: "))
        constituency_id = int(input("Enter candidate constituency id: "))
        candidate = Candidate(candidate_id, name, aadhar_no, source_of_funding, total_donations,
                                total_funding_received, total_expenditure, party_id, constituency_id)
        
        try:
            with con.cursor() as cur:
                query = f"INSERT INTO Candidate VALUES ({candidate_id}, '{name}', {aadhar_no}, '{source_of_funding}', {total_donations}, {total_funding_received}, {total_expenditure}, {party_id}, {constituency_id});"
                cur.execute(query)
                con.commit()
                print("Candidate added successfully!")
        except Exception as e:
            print("Error: ", e)
            print("Candidate not added!")

    elif ch == 2:
        print("Enter voter details:")
        voter_id = int(input("Enter voter id: "))
        name = input("Enter voter name: ")
        aadhar_no = int(input("Enter voter aadhar no: "))
        constituency_id = int(input("Enter voter constituency id: "))
        
        try:
            with con.cursor() as cur:
                query = f"INSERT INTO voter VALUES ({voter_id}, '{name}', {aadhar_no}, {constituency_id});"
                cur.execute(query)
                con.commit()
                print("Voter added successfully!")
        except Exception as e:
            print("Error: ", e)
            print("Voter not added!")

    elif ch == 3:
        print("Enter political party details:")
        party_id = int(input("Enter party id: "))
        name = input("Enter party name: ")
        symbol = input("Enter party symbol: ")
        leader = input("Enter party leader: ")
        
        try:
            with con.cursor() as cur:
                query = f"INSERT INTO Political_Party VALUES ({party_id}, '{name}', '{symbol}', '{leader}');"
                cur.execute(query)
                con.commit()
                print("Political party added successfully!")
        except Exception as e:
            print("Error: ", e)
            print("Political party not added!")

    else:
        print("Error: Invalid choice")

def option2():
    """
    Function to implement option 1
    """
    tmp = sp.call('clear', shell=True)

    print("Enter your choice:")
    print("1. Update candidate details")
    print("2. Update voter details")
    print("3. Update political party details")
    ch = int(input("Enter choice> "))

    if ch == 1:
        print("Enter candidate_id of candidate to be updated:")
        candidate_id = int(input("Enter candidate id: "))
        
        with con.cursor() as cur:
            query = f"SELECT * FROM Candidate WHERE candidate_id = {candidate_id};"
            cur.execute(query)
            result = cur.fetchone()
            if result is None:
                print("Candidate not found!")
                return
            else:
                
                # print("Enter number of attributes to be updated:")
                n = int(input("Enter number of attributes: "))
                list = []
                for i in range(n):
                    # print("Enter attribute_name and new value:")
                    attribute_name,value = input("Enter attribute name and value: ")
                    list.append((attribute_name,value))
                
                for i in range(n):
                    
                    try:
                        with con.cursor() as cur:
                            query = f"UPDATE Candidate SET {list[i][0]} = {list[i][1]} WHERE candidate_id = {candidate_id};"
                            cur.execute(query)
                            con.commit()
                            print("Candidate updated successfully!")
                    except Exception as e:
                        print("Error: ", e)
                        print("Invalid attribute/value not updated!")
                    
    elif ch == 2:
        print("Enter voter_id of voter to be updated:")
        voter_id = int(input("Enter voter id: "))
        
        with con.cursor() as cur:
            query = f"SELECT * FROM Voter WHERE voter_id = {voter_id};"
            cur.execute(query)
            result = cur.fetchone()
            if result is None:
                print("Voter not found!")
                return
            else:
                
                # print("Enter number of attributes to be updated:")
                n = int(input("Enter number of attributes: "))
                list = []
                for i in range(n):
                    # print("Enter attribute_name and new value:")
                    attribute_name,value = input("Enter attribute name and value: ")
                    list.append((attribute_name,value))
                
                for i in range(n):
                    
                    try:
                        with con.cursor() as cur:
                            query = f"UPDATE voter SET {list[i][0]} = {list[i][1]} WHERE voter_id = {voter_id};"
                            cur.execute(query)
                            con.commit()
                            print("Voter updated successfully!")
                    except Exception as e:
                        print("Error: ", e)
                        print("Invalid attribute/value not updated!")

    elif ch == 3:

        print("Enter party_id of political party to be updated:")
        party_id = int(input("Enter party id: "))
        
        with con.cursor() as cur:
            query = f"SELECT * FROM Political_Party WHERE party_id = {party_id};"
            cur.execute(query)
            result = cur.fetchone()
            if result is None:
                print("Political party not found!")
                return
            else:
                
                # print("Enter number of attributes to be updated:")
                n = int(input("Enter number of attributes: "))
                list = []
                for i in range(n):
                    # print("Enter attribute_name and new value:")
                    attribute_name,value = input("Enter attribute name and value: ")
                    list.append((attribute_name,value))
                
                for i in range(n):
                    
                    try:
                        with con.cursor() as cur:
                            query = f"UPDATE Political_Party SET {list[i][0]} = {list[i][1]} WHERE party_id = {party_id};"
                            cur.execute(query)
                            con.commit()
                            print("Political party updated successfully!")
                    except Exception as e:
                        print("Error: ", e)
                        print("Invalid attribute/value not updated!")
    
    else:
        print("Error: Invalid choice")



def option3():
    """
    Function to implement option 2
    """
    tmp = sp.call('clear', shell=True)

    print("Enter your choice:")
    print("1. Delete a candidate")
    print("2. Delete a voter")
    print("3. Delete a political party")
    ch = int(input("Enter choice> "))

    if ch == 1:
        print("Enter candidate_id of candidate to be deleted:")
        candidate_id = int(input("Enter candidate id: "))
        
        with con.cursor() as cur:
            query = f"SELECT * FROM Candidate WHERE candidate_id = {candidate_id};"
            cur.execute(query)
            result = cur.fetchone()
            if result is None:
                print("Candidate not found!")
                return
            else:
                
                try:
                    with con.cursor() as cur:
                        query = f"DELETE FROM Candidate WHERE candidate_id = {candidate_id};"
                        cur.execute(query)
                        con.commit()
                        print("Candidate deleted successfully!")
                except Exception as e:
                    print("Error: ", e)
                    print("Candidate not deleted!")
                    
    elif ch == 2:
        print("Enter voter_id of voter to be deleted:")
        voter_id = int(input("Enter voter id: "))
        
        with con.cursor() as cur:
            query = f"SELECT * FROM Voter WHERE voter_id = {voter_id};"
            cur.execute(query)
            result = cur.fetchone()
            if result is None:
                print("Voter not found!")
                return
            else:
                
                try:
                    with con.cursor() as cur:
                        query = f"DELETE FROM Voter WHERE voter_id = {voter_id};"
                        cur.execute(query)
                        con.commit()
                        print("Voter deleted successfully!")
                except Exception as e:
                    print("Error: ", e)
                    print("Voter not deleted!")

    elif ch == 3:

        print("Enter party_id of political party to be deleted:")
        party_id = int(input("Enter party id: "))
        
        with con.cursor() as cur:
            query = f"SELECT * FROM Political_Party WHERE party_id = {party_id};"
            cur.execute(query)
            result = cur.fetchone()
            if result is None:
                print("Political party not found!")
                return
            else:
                
                try:
                    with con.cursor() as cur:
                        query = f"DELETE FROM Political_Party WHERE party_id = {party_id};"
                        cur.execute(query)
                        con.commit()
                        print("Political party deleted successfully!")
                except Exception as e:
                    print("Error: ", e)
                    print("Political party not deleted!")


def option4():
    """
    Function to implement option 3
    """
    tmp = sp.call('clear',shell=True)

    print("Enter your choice:")
    print("1. Get total number of polling booths in a constituency")
    print("2. Get maximum number of votes registered by a party in a constituency")
    print("3. Get constituency which consumes least amount of resources")

    ch = int(input("Enter choice> "))
    if ch == 1:
        constituency_id = int(input("Enter constituency id: "))
        try:
            with con.cursor() as cur:
                query = f"SELECT SUM(Polling_Booths) FROM Constituency WHERE constituency_id = {constituency_id};"
                cur.execute(query)
                result = cur.fetchone()
                if result is None:
                    print("Constituency not found!")
                    return
                else:
                    print("Total number of polling booths: ", result['SUM(Polling_Booths)'])
        except Exception as e:
            print("Error: ", e)
            print("Invalid constituency id!")
    
    elif ch == 2:
        constituency_id = int(input("Enter constituency id: "))
        try:
            with con.cursor() as cur:
                query = f"SELECT MAX(Votes) FROM Constituency WHERE constituency_id = {constituency_id};"
                cur.execute(query)
                result = cur.fetchone()
                if result is None:
                    print("Constituency not found!")
                    return
                else:
                    print("Maximum number of votes: ", result['MAX(Votes)'])
        except Exception as e:
            print("Error: ", e)
            print("Invalid constituency id!")

def dispatch(ch):
    """
    Function that maps helper functions to option entered
    """

    if(ch == 1):
        option1()
    elif(ch == 2):
        option2()
    elif(ch == 3):
        option3()
    elif(ch == 4):
        option4()
    elif(ch == 5):
        option5()
    elif(ch == 6):
        option6()
    elif(ch == 7):
        option7()
    else:
        print("Error: Invalid Option")


# Global
while(1):
    tmp = sp.call('clear', shell=True)
    
    # Can be skipped if you want to hardcode username and password
    username = input("Username: ")
    password = input("Password: ")

    try:
        # Set db name accordingly which have been create by you
        # Set host to the server's address if you don't want to use local SQL server 
        con = pymysql.connect(host='localhost',
                              user=username,
                              password=password,
                              cursorclass=pymysql.cursors.DictCursor)
        tmp = sp.call('clear', shell=True)

        if(con.open):
            print("Connected")
        else:
            print("Failed to connect")

        tmp = input("Enter any key to CONTINUE>")

        with con.cursor() as cur:
            while(1):
                tmp = sp.call('clear', shell=True)
                # Here taking example of Employee Mini-world
                print("1. Add a new candidate/voter/political party in the database:")  # Promote Employee
                print("2. Update database entries:")
                print("3. Delete a candidate/voter/political party from the database:")
                print("4. Get election aggregates:")
                print("5. Select data entities and retrieve their records:")
                print("6. Project data from the database:")
                print("7. Search the database:")
                print("8. Get data analytics:")
                print("9. Exit")
                ch = int(input("Enter choice> "))
                tmp = sp.call('clear', shell=True)
                if ch == 9:
                    exit()
                else:
                    dispatch(ch)
                    tmp = input("Enter any key to CONTINUE>")

    except Exception as e:
        tmp = sp.call('clear', shell=True)
        print(e)
        print("Connection Refused: Either username or password is incorrect or user doesn't have access to database")
        tmp = input("Enter any key to CONTINUE>")
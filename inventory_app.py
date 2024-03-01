import psycopg2
import sys

def main():
    # Connect to the database
    conn = psycopg2.connect(database="inventory_db", user="inventory_user", password="123", host="localhost", port="5432")
    cur = conn.cursor()

    while True:
        print("\nOptions:")
        print("1. Add item")
        print("2. Update inventory")
        print("3. Query inventory levels")
        print("4. Exit")

        option = input("Enter the number of the option you want to choose: ")

        if option == "1":
            item_name = input("Enter the item name: ")
            category = input("Enter the item category: ")
            cur.execute("INSERT INTO items (item_name, category) VALUES (%s, %s)", (item_name, category))
            conn.commit()
            print(f"The item '{item_name}' has been added to the database.")

        elif option == "2":
            item_id = input("Enter the item ID: ")
            full_cases = input("Enter the number of full cases: ")
            cur.execute("UPDATE inventory SET full_cases = %s WHERE item_id = %s", (full_cases, item_id))
            conn.commit()
            print(f"The number of full cases for item {item_id} has been updated.")

        elif option == "3":
            cur.execute("SELECT i.item_name, i.category, iu.individual_units, inv.full_cases * 12 + iu.individual_units AS total_units FROM items i JOIN inventory_units iu ON i.item_id = iu.item_id JOIN inventory inv ON iu.inventory_id = inv.inventory_id")
            results = cur.fetchall()
            for result in results:
                print(f"Item: {result[0]}, Category: {result[1]}, Individual Units: {result[2]}, Total Units: {result[3]}")

        elif option == "4":
            break

        else:
            print("Invalid option, please try again.")

    # Close the connection
    cur.close()
    conn.close()

if __name__ == "__main__":
    main()
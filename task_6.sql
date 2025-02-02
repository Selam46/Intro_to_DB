#!/bin/bash

# Check if task_6.sql exists
if [ ! -f "task_6.sql" ]; then
  echo "Error: task_6.sql file does not exist."
  exit 1
fi

# Check if task_6.sql is not empty
if [ ! -s "task_6.sql" ]; then
  echo "Error: task_6.sql file is empty."
  exit 1
fi

# Run the task_6.sql file to insert data
mysql -u root -p alx_book_store < task_6.sql

# Check for customer with customer_id = 2
RESULT_2=$(mysql -u root -p -e "USE alx_book_store; SELECT * FROM Customers WHERE customer_id = 2;" -s)
if [[ "$RESULT_2" == *"Blessing Malik"* ]] && [[ "$RESULT_2" == *"bmalik@sandtech.com"* ]] && [[ "$RESULT_2" == *"124 Happiness Ave."* ]]; then
  echo "Customer with customer_id=2 inserted successfully."
else
  echo "Error: Customer with customer_id=2 not inserted correctly."
fi

# Check for customer with customer_id = 3
RESULT_3=$(mysql -u root -p -e "USE alx_book_store; SELECT * FROM Customers WHERE customer_id = 3;" -s)
if [[ "$RESULT_3" == *"Obed Ehoneah"* ]] && [[ "$RESULT_3" == *"eobed@sandtech.com"* ]] && [[ "$RESULT_3" == *"125 Happiness Ave."* ]]; then
  echo "Customer with customer_id=3 inserted successfully."
else
  echo "Error: Customer with customer_id=3 not inserted correctly."
fi

# Check for customer with customer_id = 4
RESULT_4=$(mysql -u root -p -e "USE alx_book_store; SELECT * FROM Customers WHERE customer_id = 4;" -s)
if [[ "$RESULT_4" == *"Nehemial Kamolu"* ]] && [[ "$RESULT_4" == *"nkamolu@sandtech.com"* ]] && [[ "$RESULT_4" == *"126 Happiness Ave."* ]]; then
  echo "Customer with customer_id=4 inserted successfully."
else
  echo "Error: Customer with customer_id=4 not inserted correctly."
fi

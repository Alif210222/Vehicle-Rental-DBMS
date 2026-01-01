# Vehicle Rental Database advance Query Solution

## Live ERD Diagram - https://drawsql.app/teams/alfa-lab/diagrams/vehicle-rental-system


# Table Name: 
      - Users table
      - Vehicles Table
      - Bookings Table

#  Queries Solutions:
   1. Retrieve booking information along with: (customer name , Vehicles name )
      - Ans : In this query , i need to use (Join method) for retrieve two different table data ;

   2. Find all vehicles that have never been booked ?
      - Ans : In this case , we can solve this by 2 steps . 1) Only using WHERE and add condition on booking status , 2) Using EXISTS     with WHERE for extra benifit . Now { Does at least one row exist that matches this condition , the it give me this car details. }     

   3. Retrieve all available vehicles of a specific type (e.g. cars) ? 
      - Ans : we will get the all vehicles by using a condition just - Vehicles_type = car or bike or truck , then those type of vehicles are  retrieved.

   4. Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings ? 
      - Ans : First of all group the total bookings by vehicles-name and then count the vehicle bookings by COUNT method .  

--Query -1 
select booking_id,name,vehicle_name,start_date,end_date,booking_status from bookings
  join users on bookings.user_id = users.user_id 
    join vehicles on bookings.vehicle_id = vehicles.vehicle_id;


--Query - 2
SELECT * FROM vehicles v
WHERE EXISTS ( SELECT * FROM vehicles v2
    WHERE v2.vehicle_id = v.vehicle_id
      AND (v2.status = 'available' or v2.status = 'maintenance')
); 


--Query-3
select * from vehicles 
   where type = 'car'


--Query 4 
select vehicle_name , count(*) as total_bookings  from  bookings
 join vehicles on bookings.vehicle_id = vehicles.vehicle_id 
   group by vehicle_name having count(*) > 2;
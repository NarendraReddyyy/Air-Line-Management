insert into admin(username, password)
values ('Narendra', '919326'),
       ('Jagadeesh','919985'),
       ('Srikanth','919983'),
       ('Asmitha','919960'),
       ('Pravallika','919330');

insert into user(password, name, age, gender, email, address, phone, secret_question, answer)
values ('919330', 'Padyala Pravallika', '22', 'Female', 'pravs.1999@gmail.com', 'Vijayawada, AP', '8555962666',
        'Your nickname', 'prav'),
       ('919983', 'Srikanth Reddy', '22', 'Male', 'srikanth.123@gmail.com', 'Guntur, AP', '9989863500',
        'Your nickname', 'srikanth'),
       ('919960', 'Asmitha Reddy', '22', 'Female', 'asmitha.reddy@gmail.com', 'Kadapa,AP', '9440855757',
        'Your nickname', 'asmitha'),
       ('919985', 'Jagadeesh Kumar', '22', 'Male', 'jagadeesh@gmail.com', 'Eluru,AP',
        '8500765367', 'Your nickname', 'jaggu'),
        ('919326','Narendra Reddy','22','Male','narendra@gmail.com','Hyderabad,Telangana','9182865575','Your nickname','Narendra');

insert into flight(airline, model, type, economy_seats, business_seats)
values ('Air India', 'Airbus A300', 'Domestic', '50', '10'),
       ('IndiGo', 'Boeing 737', 'Domestic', '100', '30'),
       ('SpiceJet', 'Airbus A321', 'Domestic', '150', '50'),
       ('Emirates', 'Boeing 777', 'International', '200', '50'),
       ('British Airways', 'Boeing 787', 'International', '250', '75');

insert into flight_schedule(flight_no, source, destination, economy_seat_cost, business_seat_cost, arrival_time,
                            departure_time, sun, mon, tue, wed, thu,
                            fri, sat)
values (1, 'Kolkata', 'Chennai', '3000', '5000', '10:00:00', '12:00:00', 1, 1, 1, 1, 1, 1, 1),
       (2, 'Hyderabad', 'Bangalore', '5000', '9000', '12:00:00', '14:00:00', 1, 1, 1, 1, 1, 1, 1),
       (3, 'Delhi', 'Dubai', '12000', '20000', '17:30:00', '19:00:00', 0, 1, 0, 1, 0, 1, 0),
       (4, 'Mumbai', 'London', '10000', '15000', '10:00:00', '13:00:00', 1, 0, 1, 0, 1, 0, 1),
       (5, 'Ahmedabad', 'Delhi', '3000', '6000', '12:00:00', '13:00:00', 1, 1, 1, 0, 1, 0, 0),
       (6, 'Banglore', 'Hyderabad', '3000', '5000', '09:00:00', '11:00:00', 1, 0, 1, 0, 1, 1, 1),
       (7, 'Chennai', 'Kochi', '2000', '4000', '08:00:00', '09:30:00', 0, 0, 1, 0, 1, 0, 0),
       (8, 'Kochi', 'Kolkata', '5000', '10000', '10:00:00', '13:00:00', 1, 1, 1, 0, 1, 0, 1),
       (9, 'Hyderabad', 'Delhi', '4000', '8000', '10:00:00', '12:00:00', 1, 0, 1, 1, 1, 0, 0),
       (10, 'Banglore', 'London', '10000', '20000', '10:00:00', '15:00:00', 1, 0, 1, 0, 1, 0, 1),
       (11, 'Chennai', 'Malaysia', '10000', '15000', '09:00:00', '13:00:00', 0, 0, 1, 0, 1, 1, 1),
       (12, 'Delhi', 'Munich', '8000', '16000', '07:00:00', '14:00:00', 1, 0, 1, 0, 0, 0, 1),
       (13, 'Delhi', 'New Jersey', '15000', '30000', '10:00:00', '20:00:00', 1, 0, 0, 0, 1, 0, 1),
       (14, 'Kolkata', 'Paris', '20000', '40000', '06:00:00', '15:00:00', 1, 0, 0, 0, 0, 0, 1),
       (15, 'Delhi', 'Paris', '20000', '35000', '09:00:00', '15:00:00', 0, 0, 1, 0, 1, 0, 1);

insert
into news_feed(news, date)
values ('Due to fog some flights will get delayed', '2021-07-10'),
       ('Our agency will never call you for bank information', '2021-07-08');

insert into bank(bank_name)
values ('SBI'),
       ('HDFC'),
       ('ICICI');

insert into account(account_no, balance, bank_id)
values ('12345', '100000', '1'),
       ('23456', '50000', '2'),
       ('34567', '10000', '3'),
       ('45678', '5000', '1'),
       ('56789', '1000', '2');
INSERT INTO salesperson(
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    'Johnny',
    'Depp',
    'Jdepp23@gmail.com',
    '724-967-8478'
), (
    'Leonardo',
    'Dicaprio',
    'Lnardo1177@hotmail.com',
    '825-912-3456'
), (
    'Jay',
    'Z',
    'HovaJiggaman@theroc.com',
    '512-673-6927'
), (
    'Lil',
    'Durk',
    'Chiraqfinestgang72@gmail.com',
    '412-784-9999'
);

INSERT INTO car(
    make,
    model,
    car_year,
    car_price,
    new_used
) VALUES (
    'Hyundai',
    'Elantra',
    '2013',
    '13,642.37',
    'used'
), (
    'Toyota',
    'Tundra',
    '2023',
    '34,005.20',
    'new'
), (
    'Ford',
    'F150',
    '2019',
    '45,003.82',
    'used'
), (
    'Cheverlot',
    'Camaro',
    '2023',
    '53,000.75',
    'new'
);

INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    'Bill',
    'Gates',
    'Gates@microsoft.com',
    '555-555-5555'
), (
    'Elon',
    'Musk',
    'Teslamaker@deez.com',
    '841-209-6789'
), (
    'Katt',
    'Williams',
    'AtDatCat@deez.com',
    '777-838-9404'
), (
    'Aubrey',
    'Graham',
    'Champagnepapi@yourmamahouse.com',
    '888-903-3174'
);

INSERT INTO invoice (
    salesperson_id,
    customer_id,
    invoice_date,
    car_id,
    price
) VALUES (
    2,
    2,
    '2022/09/23',
    2,
    '261.23'
), (
    3,
    3,
    '2022/06/23',
    3,
    '101.65'
), (
    4,
    4,
    '2022/03/05',
    4,
    '22.99'
);


CREATE FUNCTION add_customer_now(
    customer_num INTEGER,
    f_name VARCHAR(100),
    l_name VARCHAR(100),
    mail VARCHAR(100),
    phone VARCHAR(30)
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO customer(
        customer_id,
        first_name,
        last_name,
        email,
        phone_number
    ) VALUES (
        customer_num,
        f_name,
        l_name,
        mail,
        phone
    );
END
$MAIN$

SELECT  add_customer_now(201, 'Julian', 'Garner', 'jgarner65@gmail.com', '412-541-2987');

SELECT *
FROM customer;


SELECT add_car(22, 'KIA', 'Sorento', '1998', '1254.12', 'used')

SELECT *
FROM car;
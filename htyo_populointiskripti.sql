insert into customers (customer_token, name, address, active, created_at, updated_at) 
values 	
	('1234', 'Kuopion Setlementti Puijola', 'Kuopio', '1', (select now()), (select now())),
	('5678', 'Grilli 21', 'Jyväskylä', '1', (select now()), (select now())),
	('9999', 'Metso', 'Helsinki', '1', (select now()), (select now())),
	('1111', 'Varatoimari Oy', 'Kuopio', '0', (select now()), (select now()));

insert into user_roles (role)
values
	('admin'), ('support'), ('user'), ('restricted');


insert into users (user_role_id, customer_id, name, email, password, active, created_at, updated_at) 
values 
	('1',  '1', 'Testi', 'testi@testi', '$2y$10$7Xe0camAlzMx6aCxQrfOweETRLIaeG1mygngysWtxzVDnHTb92v.m', '1', (select now()), (select now())),
	('1', '3', 'Halkosaari, Lassi', 'lassi@testi', '$2y$10$7Xe0camAlzMx6aCxQrfOweETRLIaeG1mygngysWtxzVDnHTb92v.m', '1', (select now()), (select now())),
	('2', '2',  'Bordi, Tuukka', 'tuukka@testi', '$2y$10$7Xe0camAlzMx6aCxQrfOweETRLIaeG1mygngysWtxzVDnHTb92v.m', '1', (select now()), (select now())),
	('1', '1',  'Alatalo, Tatu', 'tatu@testi', '$2y$10$7Xe0camAlzMx6aCxQrfOweETRLIaeG1mygngysWtxzVDnHTb92v.m', '1', (select now()), (select now())),
	('4', '1',  'Pukki, Joulu', 'joulu@testi', '$2y$10$7Xe0camAlzMx6aCxQrfOweETRLIaeG1mygngysWtxzVDnHTb92v.m', '0', (select now()), (select now()));


insert into backup_solutions (description, created_at, updated_at) values 
	('Easylevy', (select now()), (select now())),
	('Acronis', (select now()), (select now())),
	('Azure Backup', (select now()), (select now())),
	('Google Cloud', (select now()), (select now()));

insert into device_types (type, created_at, updated_at)
values
	('Kannettava', (select now()), (select now())),
	('Pöytäkone', (select now()), (select now())),
	('Puhelin', (select now()), (select now())),
	('Tabletti', (select now()), (select now()));
/*
insert into lease_contracts (contract_description, created_at, updated_at)
values
	('Siemens Leasing', (select now()), (select now()));
*/
insert into licenses (name, created_at, updated_at)
values
	('F-Secure PSB <lisenssikoodi tähän>', (select now()), (select now())),
	('EasyLevy <lisenssikoodi tähän>', (select now()), (select now())),
	('Adobe Acrobat Pro <lisenssikoodi tähän>', (select now()), (select now())),
	('Sophos Anti-Virus <lisenssikoodi tähän>', (select now()), (select now()));

insert into manufacturers (name, created_at, updated_at)
values
	('Fujitsu', (select now()), (select now())),
	('Dell', (select now()), (select now())),
	('HP', (select now()), (select now())),
	('Lenovo', (select now()), (select now()));

insert into operating_systems (name, created_at, updated_at)
values
	('Micosoft Windows 10 Home', (select now()), (select now())),
	('Micosoft Windows 10 Ultimate', (select now()), (select now())),
	('Micosoft Windows 7 Home', (select now()), (select now())),
	('Micosoft Windows 7 Pro', (select now()), (select now()));

insert into security_softwares (description, created_at, updated_at)
values
	('F-Secure PSB', (select now()), (select now())),
	('Sophos Endpoint Protection', (select now()), (select now())),
	('Avast Antivirus', (select now()), (select now())),
	('McAfee', (select now()), (select now()));	

insert into softwares (items, created_at, updated_at)
values
	('Firefox, New Edge, VLC, Adobe Acrobat Reader,OneDrive', (select now()), (select now())),
	('Firefox, Chrome, New Edge, VLC, Adobe Acrobat Reader', (select now()), (select now())),
	('New Edge, VLC, Adobe Acrobat Reader, OneDrive', (select now()), (select now())),
	('New Edge, OneDrive', (select now()), (select now()));

insert into vendors (name)
values
	('Also'), ('Microdata'), ('F9'), ('Verkkokauppa.com');

insert into warranties (description, created_at, updated_at)
values
	('Tehdastakuu', (select now()), (select now())), 
	('On-Site', (select now()), (select now())),
 	('On-Site Next Business Day', (select now()), (select now()));
/*
select * from customers; select * from os; select * from device_types; select * from licenses; select * from softwares;  select * from warranties; select * from manufacturers; select * from security_softwares; select * from vendors;
*/

insert into devices (device_token, admin, admin_password, customer_id, user_id, operating_system_id, device_type_id, license_id, software_id, warranty_id, manufacturer_id, security_software_id, vendor_id, backup_solution_id, device_model, device_name, notes, buy_date, serial_no, warranty_valid_until, teamviewer_id, active, order_no, product_no, lease_contract_no, attachments, created_at, updated_at)
values	
	('VT171123', '.\\varatoimari', '1234', '1', '4', '1', '2', '1', '1', '1', '1', '2', '1', '4', 'ProBook 123' , 'DESKTOP-H9145', 'Toimitettu suoraan käyttäjälle', '01.01.2020', 'QX128459847', '01.01.2022', '3248978', '1', '37656779', '1324980854321234', NULL, NULL, (select now()), (select now())),

('VT171124', '.\\admin', '4321', '2', '3',  '4', '1', NULL, '1', '1', '2', NULL, '1', '2', 'Latitude E1234', 'DESKTOP-N3471', 'Takuuasiat meidän kautta', '05.09.2019', '23478787653', '05.09.2021', '239567823', '1', '245457653454678', '1344567832369322317', NULL, NULL, (select now()), (select now())),

('VT171125', 'Varatoimari', 'Varatoimari', '3', '2', '2', '2', '4', '1', '2', '3', '4', '4', '3', 'ZenBook 1234', 'DESKTOP-K1472', NULL, '01.07.2018', '654325008034', '01.07.2020', '29875461976', '0', '9826545679975', '89127645560917832', NULL, NULL, (select now()), (select now())),

('VT171126', '.\\admin', 's4l4s4n4', '1', '5',  '3', '1', '4', '3', '1', '4', '3', '3', '1', 'Lifebook 1234', 'DESKTOP-Q5825', 'Laite poistettu käytöstä 5.7.2020', '01.03.2017', '123456789124356', '01.03.2019', '234365578', '0', '112334985467685', '234453464', NULL, NULL, (select now()), (select now()));
	
insert into addon_devices (description, notes, main_device_id)
values
	('Hiiri Logitech 1 kpl', 'tuli laitteen mukana', 1), 
	('Näppäimistö 1 kpl', 'tuli laitteen mukana', 1 ), 
	('Kaiuttimet 1 kpl Bose', NULL, 4), 
	('Telakka Fujitsu Replicator', NULL, 4);
	

	

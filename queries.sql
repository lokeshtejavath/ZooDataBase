CREATE TABLE zoo(
  zoo_id NUMBER PRIMARY KEY, 
  zoo_name VARCHAR(100), 
  city VARCHAR(100), 
  no_of_cages NUMBER
);
INSERT INTO zoo 
VALUES 
  (
    10003, 'Sri Venkateswara Zoological Park', 
    'Tirupati', 69
  );
INSERT INTO zoo 
VALUES 
  (
    10004, 'Kakatiya Zoological Park', 
    'Hanmakonda', 102
  );
INSERT INTO zoo 
VALUES 
  (
    10007, 'Nehru Zoological Park', 'Hyderabad', 
    43
  );
INSERT INTO zoo 
VALUES 
  (
    10009, 'Indira Gandhi Zoological Park', 
    'Visakhapatnam', 39
  );
CREATE TABLE taxonomy(
  animal_order VARCHAR(100) PRIMARY KEY, 
  animal_class VARCHAR(100)
);
INSERT INTO taxonomy 
VALUES 
  ('Anura', 'Amphibia');
INSERT INTO taxonomy 
VALUES 
  ('Artiodactyla', 'Mammalia');
INSERT INTO taxonomy 
VALUES 
  ('Cardiida', 'invertebrate');
INSERT INTO taxonomy 
VALUES 
  ('Carnivora', 'Mammalia');
INSERT INTO taxonomy 
VALUES 
  ('Casuariiformes', 'Aves');
INSERT INTO taxonomy 
VALUES 
  ('Ciconiiformes', 'Aves');
INSERT INTO taxonomy 
VALUES 
  ('Crocodilia', 'Reptilia');
INSERT INTO taxonomy 
VALUES 
  ('Cyclopoida', 'Hexanauplia');
INSERT INTO taxonomy 
VALUES 
  ('Decapoda', 'invertebrate');
INSERT INTO taxonomy 
VALUES 
  ('Galliformes', 'Aves');
INSERT INTO taxonomy 
VALUES 
  ('Lagomorpha', 'Mammalia');
INSERT INTO taxonomy 
VALUES 
  ('Mytilida', 'invertebrate');
INSERT INTO taxonomy 
VALUES 
  ('Octopoda', 'Cephalopoda');
INSERT INTO taxonomy 
VALUES 
  ('Perissodactyla', 'Mammalia');
INSERT INTO taxonomy 
VALUES 
  ('primate', 'Mammalia');
INSERT INTO taxonomy 
VALUES 
  ('Primates', 'Mammalia');
INSERT INTO taxonomy 
VALUES 
  ('Psittaciformes', 'Aves');
INSERT INTO taxonomy 
VALUES 
  ('Semaeostomeae', 'invertebrate');
INSERT INTO taxonomy 
VALUES 
  ('serpentes', 'Reptilia');
INSERT INTO taxonomy 
VALUES 
  ('Squamata', 'Reptilia');
INSERT INTO taxonomy 
VALUES 
  (
    'Syngnathiformes', 'Actinopterygii'
  );
INSERT INTO taxonomy 
VALUES 
  ('Testudines', 'Reptilia');
INSERT INTO taxonomy 
VALUES 
  ('Urodela', 'Amphibia');
CREATE TABLE animal_kind(
  animalk_id NUMBER PRIMARY KEY, 
  kind_name VARCHAR(100), 
  nominal_name VARCHAR(100), 
  animal_order VARCHAR(100), 
  FOREIGN KEY(animal_order) REFERENCES taxonomy(animal_order), 
  status VARCHAR(100)
);
INSERT INTO animal_kind 
VALUES 
  (
    105001, 'Bengal Tiger', 'Panthera tigris tigris', 
    'Carnivora', 'EN'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105002, 'African Lion', 'Panthera leo leo', 
    'Carnivora', 'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105003, 'Chimpanzee', 'Pan troglodytes', 
    'primate', 'EN'
  );
INSERT INTO animal_kind 
VALUES 
  (
    106001, 'King Cobra', 'Ophiophagus hannah', 
    'serpentes', 'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    102001, 'Openbill Stork', 'Anastomus oscitans', 
    'Ciconiiformes', 'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    101001, 'Red Eye Tree Frog', 'Agalychnis callidryas', 
    'Anura', 'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    101002, 'Asiatic salamanders', 'Hynobius oyamai', 
    'Urodela', 'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    103001, 'Lined Seahorse', 'Hippocampus erectus', 
    'Syngnathiformes', 'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    101003, 'Axolotl', 'Ambystoma mexicanum', 
    'Urodela', 'CR'
  );
INSERT INTO animal_kind 
VALUES 
  (
    104001, 'Crustaceans', 'Acanthocyclops hypogeus', 
    'Cyclopoida', 'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    102002, 'Red-breasted Parakeet', 
    'Psittacula alexandri', 'Psittaciformes', 
    'NT'
  );
INSERT INTO animal_kind 
VALUES 
  (
    102003, 'Grey Parrot', 'Psittacus erithacus', 
    'Psittaciformes', 'EN'
  );
INSERT INTO animal_kind 
VALUES 
  (
    106002, 'Aldabra giant tortoise', 
    'Aldabrachelys gigantea', 'Testudines', 
    'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105004, 'indian rhinoceros', 'Rhinoceros unicornis', 
    'Perissodactyla', 'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105005, 'Himalayan Black Bear', 'Ursus thibetanus laniger', 
    'Carnivora', 'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105006, 'Assam macaque', 'Macaca assamensis', 
    'Primates', 'NT'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105007, 'Hippopotamus', 'Hippopotamus amphibius', 
    'Artiodactyla', 'EX'
  );
INSERT INTO animal_kind 
VALUES 
  (
    106003, 'saltwater croccodile', 'Crocodylus porosus', 
    'Crocodilia', 'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    106004, 'indian python', 'Python molurus', 
    'Squamata', 'NT'
  );
INSERT INTO animal_kind 
VALUES 
  (
    104002, 'maxima clam', 'Tridacna maxima', 
    'Cardiida', 'CD'
  );
INSERT INTO animal_kind 
VALUES 
  (
    104003, 'Blue mussel', 'Mytilus edulis', 
    'Mytilida', 'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    104004, 'spider crab', 'Macrocheira kaempferi', 
    'Decapoda', 'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    104005, 'moon jellies', 'Aurelia aurita', 
    'Semaeostomeae', 'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    104006, 'Giant Pacific octopus', 
    'Enteroctopus dofleini', 'Octopoda', 
    'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    102004, 'Love Bird', 'Agapornis', 
    'Psittaciformes', 'NT'
  );
INSERT INTO animal_kind 
VALUES 
  (
    102005, 'Emu', 'Dromaius novaehollandiae', 
    'Casuariiformes', 'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105008, 'Zebra', 'Hippotigris', 'Perissodactyla', 
    'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105009, 'Giraffe', 'Giraffa', 'Artiodactyla', 
    'VU'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105010, 'indian wolf', 'Canis lupus pallipes', 
    'Carnivora', 'EN'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105011, 'fox', 'fuhsaz', 'Carnivora', 
    'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105012, 'racoon', 'Procyon lotor', 
    'Carnivora', 'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105013, 'horse', 'Equus ferus caballus', 
    'Perissodactyla', 'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105014, 'rabbit', 'oryctolagus cuniculus', 
    'Lagomorpha', 'NT'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105015, 'camel', 'camelus', 'Artiodactyla', 
    'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    102006, 'peacock', 'pavo Cristatus', 
    'Galliformes', 'LC'
  );
INSERT INTO animal_kind 
VALUES 
  (
    105016, 'Sambar deer', 'Rusa unicolor', 
    'Artiodactyla', 'VU'
  );
CREATE TABLE animal(
  animal_id NUMBER PRIMARY KEY, 
  animal_name VARCHAR(100), 
  cageno NUMBER, 
  height DOUBLE PRECISION, 
  weight DOUBLE PRECISION, 
  age NUMBER, 
  gender VARCHAR(1), 
  origin VARCHAR(100), 
  animalk_id NUMBER, 
  FOREIGN KEY(animalk_id) REFERENCES animal_kind(animalk_id), 
  zoo_id NUMBER, 
  FOREIGN KEY(zoo_id) REFERENCES zoo(zoo_id)
);
INSERT INTO animal 
VALUES 
  (
    30001, 'naveen', 101, 23, 0.22, 2, 'M', 
    'North america', 103001, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30002, 'Tanisha', 102, 31, 0.38, 9, 'M', 
    'africa', 102003, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30003, 'sarfaraz', 103, 530, 1025, 24, 
    'M', 'india', 106003, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30004, 'preethi', 104, 60, 19, 5, 'M ', 
    'india', 105010, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30005, 'shashi kamal', 105, 188, 430, 
    21, 'F', 'North america', 105015, 
    10003
  );
INSERT INTO animal 
VALUES 
  (
    30006, 'Abhiram', 106, 265, 11, 8, 'M', 
    'india', 106004, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30007, 'Pragnalahari', 107, 90, 7, 6, 
    'F', 'UK', 105011, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30008, 'karthik', 108, 305, 11, 5, 'M', 
    'india', 106001, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30009, 'Shankar', 109, 168, 43, 11, 'M', 
    'Australia', 102005, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30010, 'Nikhil', 110, 22, 0.23, 2, 'F', 
    'North america', 103001, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30011, 'Lakshita', 111, 130, 245, 7, 
    'M', 'india', 106002, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30012, 'Bhushank', 112, 6, 0.007, 6, 
    'M', 'America', 101001, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30013, 'Manoj', 113, 370, 2100, 13, 'M', 
    'india', 105004, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30014, 'Lokesh', 114, 5, 0.008, 2, 'F', 
    'America', 101001, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30015, 'shubhmann', 115, 125, 210, 12, 
    'M', 'india', 105016, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30016, 'varun', 116, 120, 190, 5, 'M', 
    'india', 102006, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30017, 'jasmine', 117, 310, 9, 4, 'M', 
    'india', 106001, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30018, 'eurek', 118, 105, 170, 4, 'F', 
    'india', 102006, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30019, 'sai teja', 119, 60, 21, 5, 'M', 
    'india', 105010, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30020, 'Samvidha', 120, 125, 210, 12, 
    'M', 'india', 105016, 10003
  );
INSERT INTO animal 
VALUES 
  (
    30021, 'Ranil', 121, 83, 2, 5, 'F', 'srilanka', 
    102001, 10003
  );
INSERT INTO animal 
vALUES 
  (
    30022, 'shashank', 122, 30, 0.3, 9, 'M', 
    'africa', 102003, 10003
  );
INSERT INTO animal 
VALUES 
  (
    40001, 'Ashish', 101, 145, 100, 11, 'M', 
    'nepal', 105005, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40002, 'Waseem', 102, 138, 360, 9, 'M', 
    'africa', 105008, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40003, 'hitesh', 103, 50, 6, 3, 'F', 'southeast asia', 
    105006, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40004, 'abhishek', 104, 45, 5, 3, 'M', 
    'europe', 105014, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40005, 'sai gowtham', 105, 40, 6, 11, 
    'M', 'North america', 105012, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40006, 'shiva reddy', 106, 400, 660, 
    13, 'M', 'south africa', 105009, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40007, 'Ramya', 107, 3, 0.125, 2, 'M', 
    'Australia', 101002, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40008, 'hitesh', 108, 310, 1450, 10, 
    'M', 'africa', 105007, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40009, 'Sandhya', 109, 360, 2100, 14, 
    'M', 'india', 105004, 10004
  );
INSERT INTO animal 
vALUES 
  (
    40010, 'Venu', 110, 330, 11, 4, 'M', 'india', 
    106001, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40011, 'amit', 111, 330, 330, 4, 'M', 
    'india', 105001, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40012, 'manoj reddy', 112, 400, 660, 
    12, 'M', 'south africa', 105009, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40013, 'Krishna', 113, 160, 45, 11, 'M', 
    'Australia', 102005, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40014, 'Rohith', 114, 80, 1, 7, 'F', 'srilanka', 
    102001, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40015, 'arjun', 115, 300, 310, 3, 'F', 
    'india', 105001, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40016, 'rahul', 116, 4, 0.006, 2, 'M', 
    'America', 101001, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40017, 'Harshit', 117, 143, 365, 8, 'M', 
    'africa', 105008, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40018, 'john', 118, 65, 25, 8, 'M', 'india', 
    105010, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40019, 'Nayan', 119, 640, 1030, 24, 'M', 
    'india', 106003, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40020, 'Raghu', 120, 90, 5, 4, 'F', 'UK', 
    105011, 10004
  );
INSERT INTO animal 
VALUES 
  (
    40021, 'vinay kumar', 121, 33, 4, 2, 
    'M', 'europe', 105014, 10004
  );
INSERT INTO animal 
vALUES 
  (
    40022, 'abhishek', 122, 165, 45, 11, 
    'M', 'Australia', 102005, 10004
  );
INSERT INTO animal 
VALUES 
  (
    70001, 'rajesh', 101, 320, 325, 3, 'M', 
    'india', 105001, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70002, 'sushith reddy', 102, 190, 220, 
    4, 'M', 'africa', 105002, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70003, 'Infi', 103, 150, 50, 5, 'F', 'africa', 
    105003, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70004, 'Sandhya', 104, 380, 2200, 15, 
    'M', 'india', 105004, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70005, 'Dinakar', 105, 150, 102, 12, 
    'M', 'nepal', 105005, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70006, 'sai akshay', 106, 60, 7, 4, 'F', 
    'southeast asia', 105006, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70007, 'Harshit', 107, 350, 1500, 11, 
    'M', 'africa', 105007, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70008, 'Sandhya', 108, 145, 370, 9, 'M', 
    'africa', 105008, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70009, 'Waseem', 109, 415, 680, 14, 'M', 
    'south africa', 105009, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70010, 'shashi kamal', 110, 62, 22, 
    6, 'M', 'india', 105010, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70011, 'varun', 111, 95, 6, 5, 'F', 'UK', 
    105011, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70012, 'sai akshay', 112, 45, 7, 12, 
    'M', 'North america', 105012, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70013, 'Tanisha', 113, 240, 640, 18, 
    'M', 'North america', 105013, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70014, 'jasmine', 114, 320, 10, 3, 'M', 
    'india', 106001, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70015, 'eurek', 115, 122, 250, 6, 'M', 
    'india', 106002, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70016, 'Ramya', 116, 550, 1050, 26, 'M', 
    'india', 106003, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70017, 'karthik', 117, 85, 1, 6, 'F', 
    'srilanka', 102001, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70018, 'Abhiram', 118, 35, 0.145, 11, 
    'M', 'Australia', 102002, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70019, 'Manoj', 119, 33, 0.4, 10, 'M', 
    'africa', 102003, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70020, 'Nayan', 120, 16, 0.05, 7, 'M', 
    'Australia', 102004, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70021, 'shashank', 121, 5, 0.008, 2, 
    'M', 'America', 101001, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70022, 'Venu', 122, 2.7, 0.065, 2, 'M', 
    'Asia', 101002, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70023, 'shubhmann', 123, 30, 0.3, 8, 
    'M', 'Mexico', 101003, 10007
  );
INSERT INTO animal 
VALUES 
  (
    70024, 'Krishna', 124, 25, 0.25, 2, 'F', 
    'North america', 103001, 10007
  );
INSERT INTO animal 
VALUES 
  (
    90001, 'Shankar', 101, 312, 320, 4, 'M', 
    'india', 105001, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90002, 'naveen', 102, 180, 210, 5, 'M', 
    'africa', 105002, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90003, 'Ashish', 103, 145, 45, 6, 'F', 
    'africa', 105003, 10009
  );
InSERT INTO animal 
VALUES 
  (
    90004, 'manoj reddy', 104, 360, 2150, 
    13, 'M', 'india', 105004, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90005, 'sushith reddy', 105, 135, 115, 
    12, 'M', 'nepal', 105005, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90006, 'abhishek', 106, 55, 8, 5, 'F', 
    'southeast asia', 105006, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90007, 'sarfaraz', 107, 333, 1411, 10, 
    'M', 'africa', 105007, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90008, 'hitesh', 108, 89, 5, 6, 'F', 'UK', 
    105011, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90009, 'Raghu', 109, 43, 6, 11, 'M', 'North america', 
    105012, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90010, 'Ranil', 110, 235, 625, 17, 'M', 
    'North america', 105013, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90011, 'Lokesh', 111, 36, 5, 3, 'M', 'europe', 
    105014, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90012, 'Nikhil', 112, 177, 433, 21, 'F', 
    'North america', 105015, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90013, 'arjun', 113, 126, 225, 14, 'M', 
    'india', 105016, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90014, 'Rohith', 114, 120, 227, 8, 'M', 
    'india', 106002, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90015, 'john', 115, 535, 1023, 23, 'M', 
    'india', 106003, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90016, 'shiva reddy', 116, 265, 11, 
    8, 'M', 'india', 106004, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90017, 'sai gowtham', 117, 30, 0.3, 
    9, 'M', 'africa', 102003, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90018, 'Infi', 118, 15, 0.04, 6, 'M', 
    'Australia', 102004, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90019, 'rahul', 119, 163, 45, 9, 'M', 
    'Australia', 102005, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90020, 'rajesh', 120, 103, 187, 5, 'M', 
    'india', 102006, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90021, 'Dinakar', 121, 2.5, 0.057, 2, 
    'M', 'Asia', 101002, 10009
  );
INSERT INTO animal 
VALUES 
  (
    90022, 'Pragnalahari', 122, 26, 0.326, 
    7, 'M', 'Mexico', 101003, 10009
  );
CREATE TABLE location(
  city VARCHAR(100) PRIMARY KEY, 
  state VARCHAR(100)
);
INSERT INTO location 
VALUES 
  ('Hyderabad', 'Telangana');
INSERT INTO location 
VALUES 
  ('Warangal', 'Telanagana');
INSERT INTO location 
VALUES 
  (
    'Visakhapatnam', 'Andhara pradesh'
  );
INSERT INTO location 
VALUES 
  ('Tirupathi', 'Andhara pradesh');
CREATE TABLE zipcode(
  zip NUMBER PRIMARY KEY, 
  mandal VARCHAR(100), 
  city VARCHAR(100), 
  FOREIGN KEY(city) REFERENCES location(city)
);
INSERT INTO zipcode 
VALUES 
  (500001, 'Uppal', 'Hyderabad');
INSERT INTO zipcode 
VALUES 
  (
    500002, 'Dilshuknagar', 'Hyderabad'
  );
INSERT INTO zipcode 
VALUES 
  (
    500016, 'Banjara Hills', 'Hyderabad'
  );
INSERT INTO zipcode 
VALUES 
  (
    500060, 'Vidyanagar', 'Hyderabad'
  );
INSERT INTO zipcode 
VALUES 
  (500069, 'Miyapur', 'Hyderabad');
INSERT INTO zipcode 
VALUES 
  (
    500125, 'Kukatpalli', 'Hyderabad'
  );
INSERT INTO zipcode 
VALUES 
  (600004, 'Kazipet', 'Warangal');
INSERT INTO zipcode 
VALUES 
  (600008, 'Subedari', 'Warangal');
INSERT INTO zipcode 
VALUES 
  (600021, 'LB nagar', 'Warangal');
INSERT INTO zipcode 
VALUES 
  (
    600035, 'Shambunipet', 'Warangal'
  );
INSERT INTO zipcode 
VALUES 
  (600055, 'Hanmakonda', 'Warangal');
INSERT INTO zipcode 
VALUES 
  (600154, 'Kothapalli', 'Warangal');
INSERT INTO zipcode 
VALUES 
  (
    530002, 'andandapuram', 'Visakhapatnam'
  );
INSERT INTO zipcode 
VALUES 
  (
    531173, 'pendurthi', 'Visakhapatnam'
  );
INSERT INTO zipcode 
VALUES 
  (
    531035, 'sabbavaram', 'Visakhapatnam'
  );
CREATE TABLE employee(
  emp_id NUMBER PRIMARY KEY, 
  emp_fname VARCHAR(100), 
  emp_lname VARCHAR(100), 
  job_type VARCHAR(100), 
  salary DOUBLE PRECISION, 
  zoo_id NUMBER, 
  FOREIGN KEY(zoo_id) REFERENCES zoo(zoo_id), 
  zip NUMBER, 
  FOREIGN KEY(zip) REFERENCES zipcode(zip)
);
INSERT INTO employee 
VALUES 
  (
    1001, 'Raghu', 'Phanesh', 'sanitary', 
    60000, 10004, 500001
  );
INSERT INTO employee 
VALUES 
  (
    1002, 'Shankar', 'konthalapalli', 
    'security', 15000, 10009, 500016
  );
INSERT INTO employee 
VALUES 
  (
    1003, 'Samvidha', 'jaaron', 'cagekeeper', 
    15000, 10007, 600055
  );
INSERT INTO employee 
VALUES 
  (
    1004, 'Rohith', 'pinnamraju', 'gatekeeper', 
    15000, 10004, 500125
  );
INSERT INTO employee 
VALUES 
  (
    1005, 'naveen', 'allu ratna', 'cagekeeper', 
    15000, 10003, 500125
  );
INSERT INTO employee 
VALUES 
  (
    1006, 'varun', 'reddy', 'cagekeeper', 
    20000, 10007, 500125
  );
INSERT INTO employee 
VALUES 
  (
    1007, 'rajesh', 'Amaragani', 'cagekeeper', 
    15000, 10009, 600021
  );
INSERT INTO employee 
VALUES 
  (
    1008, 'Waseem', 'Agarwal', 'cagekeeper', 
    15000, 10003, 500001
  );
INSERT INTO employee 
VALUES 
  (
    1009, 'vinay kumar', 'Gundapalli', 
    'cagekeeper', 20000, 10009, 600008
  );
INSERT INTO employee 
VALUES 
  (
    1010, 'shiva reddy', 'ramala', 'cagekeeper', 
    20000, 10007, 600055
  );
INSERT INTO employee 
VALUES 
  (
    1011, 'Pragnalahari', 'goud', 'sanitary', 
    15000, 10003, 500016
  );
INSERT INTO employee 
VALUES 
  (
    1012, 'Sandhya', 'Anand', 'Manager', 
    80000, 10003, 500060
  );
INSERT INTO employee 
VALUES 
  (
    1013, 'Harshit', 'Chan', 'cagekeeper', 
    20000, 10004, 500001
  );
INSERT INTO employee 
VALUES 
  (
    1014, 'Krishna', 'reddy', 'cagekeeper', 
    15000, 10007, 600021
  );
INSERT INTO employee 
VALUES 
  (
    1015, 'shubhmann', 'Tejavath', 'sanitary', 
    15000, 10007, 500001
  );
INSERT INTO employee 
VALUES 
  (
    1016, 'Ramya', 'Nallama', 'cagekeeper', 
    15000, 10003, 500001
  );
INSERT INTO employee 
VALUES 
  (
    1017, 'amit', 'pandada', 'gatekeeper', 
    15000, 10007, 600055
  );
INSERT INTO employee 
VALUES 
  (
    1018, 'preethi', 'Jyothi', 'cagekeeper', 
    20000, 10007, 600008
  );
INSERT INTO employee 
VALUES 
  (
    1019, 'Nayan', 'Kotha', 'cagekeeper', 
    20000, 10004, 600035
  );
INSERT INTO employee 
VALUES 
  (
    1020, 'jasmine', 'Kayathi', 'cagekeeper', 
    15000, 10003, 600035
  );
INSERT INTO employee 
VALUES 
  (
    1021, 'shashi kamal', 'Syed', 'security', 
    60000, 10004, 600035
  );
INSERT INTO employee 
VALUES 
  (
    1022, 'Ranil', 'reddy', 'cagekeeper', 
    15000, 10009, 600055
  );
INSERT INTO employee 
VALUES 
  (
    1023, 'manoj reddy', 'yernagula', 
    'security', 20000, 10009, 500125
  );
INSERT INTO employee 
VALUES 
  (
    1024, 'Sandhya', 'Bala', 'cagekeeper', 
    20000, 10009, 500060
  );
INSERT INTO employee 
VALUES 
  (
    1025, 'Lakshita', 'Sri', 'security', 
    20000, 10007, 500001
  );
INSERT INTO employee 
VALUES 
  (
    1026, 'abhishek', 'gill', 'cagekeeper', 
    15000, 10003, 600004
  );
INSERT INTO employee 
VALUES 
  (
    1027, 'sushith reddy', 'panga', 'cagekeeper', 
    15000, 10009, 500002
  );
INSERT INTO employee 
VALUES 
  (
    1028, 'Abhiram', 'Chowdary', 'cagekeeper', 
    15000, 10007, 500001
  );
INSERT INTO employee 
VALUES 
  (
    1029, 'sai teja', 'konka', 'gatekeeper', 
    20000, 10007, 500001
  );
INSERT INTO employee 
VALUES 
  (
    1030, 'arjun', 'gill', 'gatekeeper', 
    15000, 10009, 500002
  );
INSERT INTO employee 
VALUES 
  (
    1031, 'hitesh', 'Tejavath', 'Manager', 
    80000, 10009, 600154
  );
INSERT INTO employee 
VALUES 
  (
    1032, 'eurek', 'Devulapalli', 'cagekeeper', 
    15000, 10004, 600154
  );
INSERT INTO employee 
VALUES 
  (
    1033, 'Nikhil', 'Bulusu', 'security', 
    20000, 10007, 500069
  );
INSERT INTO employee 
VALUES 
  (
    1034, 'Dinakar', 'reddy', 'sanitary', 
    15000, 10009, 500001
  );
INSERT INTO employee 
VALUES 
  (
    1035, 'shashank', 'Kul', 'cagekeeper', 
    20000, 10009, 500060
  );
INSERT INTO employee 
VALUES 
  (
    1036, 'Ashish', 'Boganadham', 'cagekeeper', 
    20000, 10004, 600035
  );
INSERT INTO employee 
VALUES 
  (
    1037, 'Infi', 'Chanati', 'sanitary', 
    15000, 10004, 500060
  );
INSERT INTO employee 
VALUES 
  (
    1038, 'Lokesh', 'ramachandran', 'cagekeeper', 
    20000, 10009, 600008
  );
INSERT INTO employee 
VALUES 
  (
    1039, 'Bhushank', 'Dhanavath', 'security', 
    15000, 10009, 500069
  );
INSERT INTO employee 
VALUES 
  (
    1040, 'rahul', 'pechetty', 'Manager', 
    80000, 10007, 500069
  );
INSERT INTO employee 
VALUES 
  (
    1041, 'Venu', 'yekkaluru', 'gatekeeper', 
    60000, 10004, 600154
  );
INSERT INTO employee 
VALUES 
  (
    1042, 'hitesh', 'chakravarthy', 'cagekeeper', 
    20000, 10009, 500125
  );
INSERT INTO employee 
VALUES 
  (
    1043, 'karthik', 'indla', 'cagekeeper', 
    15000, 10009, 600154
  );
INSERT INTO employee 
VALUES 
  (
    1044, 'abhishek', 'Burgula', 'gatekeeper', 
    60000, 10003, 600004
  );
INSERT INTO employee 
VALUES 
  (
    1045, 'Tanisha', 'Boganadham', 'sanitary', 
    60000, 10004, 500069
  );
CREATE TABLE contact(
  emp_id NUMBER, 
  FOREIGN KEY(emp_id) REFERENCES employee(emp_id), 
  phone_number NUMBER
);
INSERT INTO contact 
VALUES 
  (1001, 8741122565);
INSERT INTO contact 
VALUES 
  (1002, 6179485234);
INSERT INTO contact 
VALUES 
  (1003, 7849562134);
INSERT INTO contact 
VALUES 
  (1004, 9844565225);
INSERT INTO contact 
VALUES 
  (1005, 9848522338);
INSERT INTO contact 
VALUES 
  (1006, 6320154879);
INSERT INTO contact 
VALUES 
  (1007, 8484879111);
INSERT INTO contact 
VALUES 
  (1008, 9787488845);
INSERT INTO contact 
VALUES 
  (1009, 9784684135);
INSERT INTO contact 
VALUES 
  (1010, 7454846513);
INSERT INTO contact 
VALUES 
  (1011, 8945632178);
INSERT INTO contact 
VALUES 
  (1012, 6851200365);
INSERT INTO contact 
VALUES 
  (1013, 7532148967);
INSERT INTO contact 
VALUES 
  (1014, 9484654819);
INSERT INTO contact 
VALUES 
  (1015, 9446210048);
INSERT INTO contact 
VALUES 
  (1016, 8998889512);
INSERT INTO contact 
VALUES 
  (1017, 8247423616);
INSERT INTO contact 
VALUES 
  (1018, 6459783120);
INSERT INTO contact 
VALUES 
  (1019, 7616911591);
INSERT INTO contact 
VALUES 
  (1020, 9561515154);
INSERT INTO contact 
VALUES 
  (1021, 9978465135);
INSERT INTO contact 
VALUES 
  (1022, 6841759325);
INSERT INTO contact 
VALUES 
  (1023, 9754125896);
INSERT INTO contact 
VALUES 
  (1024, 8484844848);
INSERT INTO contact 
VALUES 
  (1025, 8675941236);
INSERT INTO contact 
VALUES 
  (1026, 6148946844);
INSERT INTO contact 
VALUES 
  (1027, 8435445135);
INSERT INTO contact 
VALUES 
  (1028, 9987844185);
INSERT INTO contact 
VALUES 
  (1029, 8456622361);
INSERT INTO contact 
VALUES 
  (1030, 9884846848);
INSERT INTO contact 
VALUES 
  (1031, 6845794923);
INSERT INTO contact 
VALUES 
  (1032, 9474888184);
INSERT INTO contact 
VALUES 
  (1033, 6487941154);
INSERT INTO contact 
VALUES 
  (1034, 7484651879);
INSERT INTO contact 
VALUES 
  (1035, 9484166646);
INSERT INTO contact 
VALUES 
  (1036, 9584846841);
INSERT INTO contact 
VALUES 
  (1037, 9784684469);
INSERT INTO contact 
VALUES 
  (1038, 8234516548);
INSERT INTO contact 
VALUES 
  (1039, 7330915535);
INSERT INTO contact 
VALUES 
  (1040, 9665845654);
INSERT INTO contact 
VALUES 
  (1041, 9685741232);
INSERT INTO contact 
VALUES 
  (1042, 8151512003);
INSERT INTO contact 
VALUES 
  (1043, 9332182009);
INSERT INTO contact 
VALUES 
  (1044, 7481234779);
INSERT INTO contact 
VALUES 
  (1045, 7654822848);
INSERT INTO contact 
VALUES 
  (1040, 8524615397);
INSERT INTO contact 
VALUES 
  (1018, 8471616116);
INSERT INTO contact 
VALUES 
  (1024, 8484814888);
INSERT INTO contact 
VALUES 
  (1023, 6749512864);
INSERT INTO contact 
VALUES 
  (1031, 8462157930);
CREATE TABLE visitor(
  visitor_id NUMBER PRIMARY KEY, 
  phone_number NUMBER, 
  zip NUMBER, 
  FOREIGN KEY(zip) REFERENCES zipcode(zip), 
  visitor_fname VARCHAR(100), 
  visitor_lname VARCHAR(100)
);
INSERT INTO visitor 
VALUES 
  (
    1000001, 7330915535, 500001, 'Lokesh', 
    'Tejavath'
  );
INSERT INTO visitor 
VALUES 
  (
    1000002, 8247423616, 500001, 'Sandhya', 
    'Dhanavath'
  );
INSERT INTO visitor 
VALUES 
  (
    1000003, 9848522338, 500002, 'Shankar', 
    'Tejavath'
  );
INSERT INTO visitor 
VALUES 
  (
    1000004, 7532148967, 500060, 'Waseem', 
    'Syed'
  );
INSERT INTO visitor 
VALUES 
  (
    1000005, 6459783120, 500125, 'Manoj', 
    'Boganadham'
  );
INSERT INTO visitor 
VALUES 
  (
    1000006, 8524615397, 500069, 'Infi', 
    'Chan'
  );
INSERT INTO visitor 
VALUES 
  (
    1000007, 9754125896, 600004, 'Bhushank', 
    'Kul'
  );
INSERT INTO visitor 
VALUES 
  (
    1000008, 8462157930, 600055, 'Abhiram', 
    'Nallama'
  );
INSERT INTO visitor 
VALUES 
  (
    1000009, 6841759325, 600008, 'Ashish', 
    'Anand'
  );
INSERT INTO visitor 
VALUES 
  (
    1000010, 8945632178, 600154, 'Lakshita', 
    'Chowdary'
  );
INSERT INTO visitor 
VALUES 
  (
    1000011, 9685741232, 600035, 'Nayan', 
    'Jyothi'
  );
INSERT INTO visitor 
VALUES 
  (
    1000012, 8675941236, 600021, 'Ranil', 
    'Bala'
  );
INSERT INTO visitor 
VALUES 
  (
    1000013, 7849562134, 600154, 'Tanisha', 
    'Agarwal'
  );
INSERT INTO visitor 
VALUES 
  (
    1000014, 6749512864, 500060, 'Pragnalahari', 
    'Bulusu'
  );
INSERT INTO visitor 
VALUES 
  (
    1000015, 6845794923, 500001, 'Samvidha', 
    'Kayathi'
  );
INSERT INTO visitor 
VALUES 
  (
    1000016, 8234516548, 600055, 'Ramya', 
    'Sri'
  );
INSERT INTO visitor 
VALUES 
  (
    1000017, 6179485234, 500069, 'Venu', 
    'Amaragani'
  );
INSERT INTO visitor 
VALUES 
  (
    1000018, 9446210048, 500002, 'Harshit', 
    'Burgula'
  );
INSERT INTO visitor 
VALUES 
  (
    1000019, 9978465135, 500016, 'Dinakar', 
    'Kotha'
  );
INSERT INTO visitor 
VALUES 
  (
    1000020, 6487941154, 600035, 'Raghu', 
    'Gundapalli'
  );
INSERT INTO visitor 
VALUES 
  (
    1000021, 8435445135, 500001, 'Krishna', 
    'Phanesh'
  );
INSERT INTO visitor 
VALUES 
  (
    1000022, 7454846513, 500125, 'Rohith', 
    'Chanati'
  );
INSERT INTO visitor 
VALUES 
  (
    1000023, 9787488845, 600008, 'Nikhil', 
    'Devulapalli'
  );
INSERT INTO visitor 
VALUES 
  (
    1000024, 7484651879, 500001, 'sai akshay', 
    'indla'
  );
INSERT INTO visitor 
VALUES 
  (
    1000025, 8484844848, 600008, 'sai teja', 
    'yernagula'
  );
INSERT INTO visitor 
VALUES 
  (
    1000026, 9584846841, 500001, 'abhishek', 
    'pinnamraju'
  );
INSERT INTO visitor 
VALUES 
  (
    1000027, 7481234779, 500069, 'shiva reddy', 
    'yekkaluru'
  );
INSERT INTO visitor 
VALUES 
  (
    1000028, 9784684135, 600035, 'karthik', 
    'pandada'
  );
INSERT INTO visitor 
VALUES 
  (
    1000029, 8471616116, 500060, 'manoj reddy', 
    'konka'
  );
INSERT INTO visitor 
VALUES 
  (
    1000030, 9784684469, 600035, 'rajesh', 
    'ramachandran'
  );
INSERT INTO visitor 
VALUES 
  (
    1000031, 6320154879, 600008, 'amit', 
    'reddy'
  );
INSERT INTO visitor 
VALUES 
  (
    1000032, 9474888184, 500001, 'arjun', 
    'reddy'
  );
INSERT INTO visitor 
VALUES 
  (
    1000033, 9884846848, 500125, 'preethi', 
    'reddy'
  );
INSERT INTO visitor 
VALUES 
  (
    1000034, 9484166646, 600154, 'varun', 
    'chakravarthy'
  );
INSERT INTO visitor 
VALUES 
  (
    1000035, 9987844185, 500001, 'shashank', 
    'panga'
  );
INSERT INTO visitor 
VALUES 
  (
    1000036, 8741122565, 500060, 'hitesh', 
    'reddy'
  );
INSERT INTO visitor 
VALUES 
  (
    1000037, 6851200365, 500002, 'naveen', 
    'jaaron'
  );
INSERT INTO visitor 
VALUES 
  (
    1000038, 9332182009, 500001, 'abhishek', 
    'konthalapalli'
  );
INSERT INTO visitor 
VALUES 
  (
    1000039, 8151512003, 600154, 'jasmine', 
    'gill'
  );
INSERT INTO visitor 
VALUES 
  (
    1000040, 8484814888, 500069, 'shubhmann', 
    'gill'
  );
INSERT INTO visitor 
VALUES 
  (
    1000041, 6148946844, 600021, 'Sandhya', 
    'goud'
  );
INSERT INTO visitor 
VALUES 
  (
    1000042, 9844565225, 600055, 'hitesh', 
    'Boganadham'
  );
INSERT INTO visitor 
VALUES 
  (
    1000043, 7616911591, 500125, 'shashi kamal', 
    'ramala'
  );
INSERT INTO visitor 
VALUES 
  (
    1000044, 9561515154, 500016, 'sai gowtham', 
    'allu ratna'
  );
INSERT INTO visitor 
VALUES 
  (
    1000045, 8998889512, 500001, 'eurek', 
    'pechetty'
  );
INSERT INTO visitor 
VALUES 
  (
    1000046, 9665845654, 600004, 'vinay kumar', 
    'racha'
  );
INSERT INTO visitor 
VALUES 
  (
    1000047, 8484879111, 500002, 'rahul', 
    'nallapu'
  );
INSERT INTO visitor 
VALUES 
  (
    1000048, 7654822848, 600055, 'sushith reddy', 
    'mamidi'
  );
INSERT INTO visitor 
VALUES 
  (
    1000049, 8456622361, 500125, 'sarfaraz', 
    'khan'
  );
INSERT INTO visitor 
VALUES 
  (
    1000050, 9484654819, 500060, 'john', 
    'hazzlewood'
  );
CREATE TABLE purchase(
  purchase_id NUMBER PRIMARY KEY, 
  purchase_name VARCHAR(100), 
  success_rate DOUBLE PRECISION
);
INSERT INTO purchase 
VALUES 
  (101, 'debit card', 73);
INSERT INTO purchase 
VALUES 
  (102, 'Credit Card', 80);
INSERT INTO purchase 
VALUES 
  (103, 'Cash', 100);
INSERT INTO purchase 
VALUES 
  (104, 'UPI', 93);
INSERT INTO purchase 
VALUES 
  (105, 'e-Wallets', 97);
CREATE TABLE ticket(
  ticket_id NUMBER PRIMARY KEY, 
  ticket_date DATE, 
  visitor_id NUMBER, 
  FOREIGN KEY(visitor_id) REFERENCES visitor(visitor_id), 
  purchase_id NUMBER, 
  FOREIGN KEY (purchase_id) REFERENCES purchase(purchase_id), 
  zoo_id NUMBER, 
  FOREIGN KEY(zoo_id) REFERENCES zoo(zoo_id)
);
INSERT INTO ticket 
VALUES 
  (
    2908001, '15-02-2020', 1000001, 104, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    9034351, '15-02-2020', 1000002, 104, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    2110003, '15-02-2020', 1000003, 104, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    6382682, '15-02-2020', 1000004, 103, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    6824217, '14-02-2020', 1000005, 102, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    5193139, '15-02-2020', 1000006, 103, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    5542291, '14-02-2020', 1000007, 102, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    2580752, '14-02-2020', 1000008, 104, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    9154961, '15-02-2020', 1000009, 102, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    8391607, '14-02-2020', 1000010, 101, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    1329791, '14-02-2020', 1000011, 102, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    7592053, '14-02-2020', 1000012, 103, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    3782804, '15-02-2020', 1000013, 105, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    7661090, '14-02-2020', 1000014, 105, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    8873161, '15-02-2020', 1000015, 101, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    4184476, '15-02-2020', 1000016, 103, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    7149972, '15-02-2020', 1000017, 102, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    9606359, '15-02-2020', 1000018, 105, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    9445321, '14-02-2020', 1000019, 105, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    4372269, '14-02-2020', 1000020, 102, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    8904618, '15-02-2020', 1000021, 101, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    4282600, '15-02-2020', 1000022, 104, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    7045723, '15-02-2020', 1000023, 104, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    8125861, '14-02-2020', 1000024, 101, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    7911231, '15-02-2020', 1000025, 103, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    4520470, '14-02-2020', 1000026, 103, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    4248210, '14-02-2020', 1000027, 101, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    1492663, '15-02-2020', 1000028, 105, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    3858256, '15-02-2020', 1000029, 101, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    1532158, '14-02-2020', 1000030, 105, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    5654485, '15-02-2020', 1000031, 105, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    8675381, '15-02-2020', 1000032, 104, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    9649984, '14-02-2020', 1000033, 101, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    5825670, '15-02-2020', 1000034, 102, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    7643659, '14-02-2020', 1000035, 103, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    9551955, '14-02-2020', 1000036, 104, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    5205790, '15-02-2020', 1000037, 103, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    7204934, '14-02-2020', 1000038, 104, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    1414488, '14-02-2020', 1000039, 101, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    1199608, '14-02-2020', 1000040, 104, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    5155826, '14-02-2020', 1000041, 105, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    6075129, '14-02-2020', 1000042, 103, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    5763404, '14-02-2020', 1000043, 102, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    1281370, '14-02-2020', 1000044, 101, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    7502273, '15-02-2020', 1000045, 105, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    9892409, '14-02-2020', 1000046, 102, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    4104849, '15-02-2020', 1000047, 101, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    6542353, '15-02-2020', 1000048, 103, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    4659941, '15-02-2020', 1000049, 105, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    1471888, '15-02-2020', 1000050, 101, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    2553807, '15-02-2020', 1000027, 104, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    7963793, '14-02-2020', 1000022, 105, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    1787636, '15-02-2020', 1000011, 102, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    3247416, '15-02-2020', 1000019, 103, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    9060057, '15-02-2020', 1000020, 102, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    2914778, '14-02-2020', 1000025, 103, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    6691944, '14-02-2020', 1000015, 104, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    3121865, '14-02-2020', 1000028, 105, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    2840555, '14-02-2020', 1000050, 102, 
    10004
  );
INSERT INTO ticket 
VALUES 
  (
    2011305, '14-02-2020', 1000008, 101, 
    10007
  );
INSERT INTO ticket 
VALUES 
  (
    3554758, '15-02-2020', 1000005, 101, 
    10009
  );
INSERT INTO ticket 
VALUES 
  (
    2533681, '15-02-2020', 1000003, 102, 
    10003
  );
INSERT INTO ticket 
VALUES 
  (
    3526018, '15-02-2020', 1000039, 103, 
    10004
  );
CREATE TABLE looks_after(
  animal_id NUMBER, 
  FOREIGN key(animal_id) REFERENCES animal(animal_id), 
  emp_id NUMBER, 
  FOREIGN key(emp_id) REFERENCES employee(emp_id)
);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30003, 1012);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30001, 1026);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30022, 1005);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30012, 1026);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30002, 1011);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30016, 1044);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30018, 1016);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30016, 1005);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30021, 1012);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30017, 1020);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30007, 1026);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30005, 1020);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30017, 1005);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30019, 1008);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30014, 1008);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30011, 1020);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30022, 1026);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30020, 1044);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30004, 1008);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30018, 1005);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30007, 1016);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30013, 1044);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30020, 1005);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30003, 1026);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30015, 1008);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30008, 1016);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30006, 1011);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30009, 1020);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30012, 1011);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30010, 1044);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30011, 1012);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30005, 1044);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30006, 1012);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30008, 1005);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30004, 1011);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30002, 1008);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30021, 1020);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30014, 1012);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30001, 1016);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30019, 1011);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30009, 1011);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30010, 1012);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (30013, 1016);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40001, 1021);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40006, 1013);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40003, 1013);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40018, 1021);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40017, 1001);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40009, 1041);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40001, 1013);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40012, 1019);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40011, 1037);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40018, 1001);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40004, 1032);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40012, 1045);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40008, 1004);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40002, 1045);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40008, 1032);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40020, 1037);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40015, 1045);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40010, 1041);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40017, 1019);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40019, 1036);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40007, 1001);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40021, 1019);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40009, 1001);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40010, 1036);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40013, 1021);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40005, 1036);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40014, 1013);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40022, 1004);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40016, 1004);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40006, 1036);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40019, 1045);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40003, 1032);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40022, 1037);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40014, 1019);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40005, 1041);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40016, 1021);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40002, 1041);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40013, 1001);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40015, 1004);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40020, 1013);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (40007, 1004);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70023, 1003);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70015, 1018);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70010, 1025);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70017, 1017);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70012, 1014);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70020, 1025);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70020, 1040);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70002, 1015);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70022, 1029);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70024, 1025);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70014, 1040);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70009, 1040);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70022, 1028);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70007, 1010);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70016, 1015);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70017, 1018);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70009, 1033);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70024, 1028);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70013, 1033);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70008, 1017);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70023, 1029);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70014, 1015);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70006, 1006);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70010, 1003);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70004, 1033);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70006, 1018);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70005, 1029);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70003, 1014);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70019, 1014);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70015, 1029);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70001, 1006);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70021, 1003);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70003, 1010);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70016, 1017);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70008, 1003);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70011, 1010);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70001, 1028);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70018, 1025);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70007, 1018);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70005, 1015);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70004, 1028);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70018, 1017);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70011, 1014);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70021, 1006);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70013, 1040);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70019, 1010);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70012, 1006);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (70002, 1033);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90013, 1031);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90019, 1039);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90002, 1043);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90017, 1031);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90011, 1023);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90004, 1022);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90022, 1002);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90017, 1024);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90006, 1038);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90022, 1024);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90011, 1022);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90018, 1002);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90010, 1027);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90016, 1034);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90015, 1039);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90010, 1007);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90001, 1035);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90007, 1002);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90013, 1038);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90021, 1031);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90012, 1027);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90015, 1042);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90002, 1023);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90020, 1034);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90004, 1007);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90012, 1038);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90005, 1024);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90003, 1009);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90007, 1030);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90005, 1035);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90009, 1039);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90014, 1030);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90008, 1030);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90009, 1042);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90019, 1035);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90021, 1007);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90008, 1043);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90018, 1042);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90006, 1009);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90003, 1027);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90020, 1009);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90014, 1034);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90016, 1022);
INSERT INTO looks_after(animal_id, emp_id) 
VALUES 
  (90001, 1023);
CREATE TABLE visits(
  ticket_id NUMBER PRIMARY key, 
  FOREIGN key(ticket_id) REFERENCES ticket(ticket_id), 
  in_time TIMESTAMP, 
  out_time TIMESTAMP
);
INSERT INTO visits 
VALUES 
  (
    1492663, 
    to_timestamp(
      '16/02/2020 10:41:23', 'dd/mm/yyyy HH24:MI:SS'
    ), 
    to_timestamp(
      '16/02/2020 16:09:41', 'dd/mm/yyyy HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    3247416, 
    to_timestamp(
      '16/02/2020 10:53:10', 'dd/mm/yyyy HH24:MI:SS'
    ), 
    to_timestamp(
      '16/02/2020 16:53:15', 'dd/mm/yyyy HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    8675381, 
    to_timestamp(
      '2020-02-16 10:53:45', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    to_timestamp(
      '2020-02-16 16:07:41', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    9551955, 
    TO_TIMESTAMP(
      '2020/02/16 10:45:55', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:05:09', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    2840555, 
    TO_TIMESTAMP(
      '2020/02/16 10:57:30', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:07:11', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    6824217, 
    TO_TIMESTAMP(
      '2020/02/16 10:59:37', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:49:04', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    8904618, 
    TO_TIMESTAMP(
      '2020/02/16 10:35:55', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:39:35', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    5654485, 
    TO_TIMESTAMP(
      '2020/02/16 10:19:33', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:37:00', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    6075129, 
    TO_TIMESTAMP(
      '2020/02/16 10:13:17', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:51:43', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    9445321, 
    TO_TIMESTAMP(
      '2020/02/16 10:02:13', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:39:21', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    2580752, 
    TO_TIMESTAMP(
      '2020/02/16 10:24:49', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:34:15', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    8391607, 
    TO_TIMESTAMP(
      '2020/02/16 10:55:25', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:52:53', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    9892409, 
    TO_TIMESTAMP(
      '2020/02/16 10:36:25', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:56:01', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    1199608, 
    TO_TIMESTAMP(
      '2020/02/16 10:34:36', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:21:06', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    7963793, 
    TO_TIMESTAMP(
      '2020/02/16 10:06:32', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:05:19', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    5155826, 
    TO_TIMESTAMP(
      '2020/02/16 10:51:08', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:33:28', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    5763404, 
    TO_TIMESTAMP(
      '2020/02/16 10:44:51', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:59:38', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    2110003, 
    TO_TIMESTAMP(
      '2020/02/16 10:15:44', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:15:41', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    6382682, 
    TO_TIMESTAMP(
      '2020/02/16 10:12:47', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:03:10', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    2533681, 
    TO_TIMESTAMP(
      '2020/02/16 10:04:27', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:23:22', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    7502273, 
    TO_TIMESTAMP(
      '2020/02/16 10:49:43', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:27:10', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    4282600, 
    TO_TIMESTAMP(
      '2020/02/16 10:08:32', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:38:08', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    1414488, 
    TO_TIMESTAMP(
      '2020/02/16 10:17:45', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:01:06', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    2011305, 
    TO_TIMESTAMP(
      '2020/02/16 10:10:18', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:53:30', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    5825670, 
    TO_TIMESTAMP(
      '2020/02/16 10:52:16', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:25:18', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    5542291, 
    TO_TIMESTAMP(
      '2020/02/16 10:45:49', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:27:55', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    7911231, 
    TO_TIMESTAMP(
      '2020/02/16 10:19:39', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:20:18', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    3526018, 
    TO_TIMESTAMP(
      '2020/02/16 10:53:35', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:01:15', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    3121865, 
    TO_TIMESTAMP(
      '2020/02/16 10:06:32', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:48:04', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    7204934, 
    TO_TIMESTAMP(
      '2020/02/16 10:58:37', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:18:58', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    9606359, 
    TO_TIMESTAMP(
      '2020/02/16 10:48:07', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:46:30', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    4184476, 
    TO_TIMESTAMP(
      '2020/02/16 10:25:49', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:42:25', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    7661090, 
    TO_TIMESTAMP(
      '2020/02/16 10:43:17', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:43:40', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    7045723, 
    TO_TIMESTAMP(
      '2020/02/16 10:05:32', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:01:53', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    9060057, 
    TO_TIMESTAMP(
      '2020/02/16 10:20:27', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:15:26', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    5205790, 
    TO_TIMESTAMP(
      '2020/02/16 10:11:27', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:56:54', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    4104849, 
    TO_TIMESTAMP(
      '2020/02/16 10:26:58', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:34:08', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    2553807, 
    TO_TIMESTAMP(
      '2020/02/16 10:24:42', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:15:18', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    9034351, 
    TO_TIMESTAMP(
      '2020/02/16 10:28:38', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:14:13', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    2914778, 
    TO_TIMESTAMP(
      '2020/02/16 10:08:42', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:46:15', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    3858256, 
    TO_TIMESTAMP(
      '2020/02/16 10:27:32', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:19:23', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    1787636, 
    TO_TIMESTAMP(
      '2020/02/16 10:44:10', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:38:08', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    7149972, 
    TO_TIMESTAMP(
      '2020/02/16 10:57:23', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:43:08', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    8873161, 
    TO_TIMESTAMP(
      '2020/02/16 10:13:09', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:28:47', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    4248210, 
    TO_TIMESTAMP(
      '2020/02/16 10:45:59', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:02:39', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    9649984, 
    TO_TIMESTAMP(
      '2020/02/16 10:10:55', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:56:38', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    1281370, 
    TO_TIMESTAMP(
      '2020/02/16 10:51:59', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:14:23', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    6542353, 
    TO_TIMESTAMP(
      '2020/02/16 10:42:06', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:56:21', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    9154961, 
    TO_TIMESTAMP(
      '2020/02/16 10:43:42', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:56:05', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    1532158, 
    TO_TIMESTAMP(
      '2020/02/16 10:56:47', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:45:51', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    4659941, 
    TO_TIMESTAMP(
      '2020/02/16 10:07:14', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:05:52', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    7592053, 
    TO_TIMESTAMP(
      '2020/02/16 10:18:42', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:40:27', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    6691944, 
    TO_TIMESTAMP(
      '2020/02/16 10:39:33', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:12:16', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    3782804, 
    TO_TIMESTAMP(
      '2020/02/16 10:08:33', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:29:45', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    4520470, 
    TO_TIMESTAMP(
      '2020/02/16 10:46:02', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:05:51', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    7643659, 
    TO_TIMESTAMP(
      '2020/02/16 10:57:25', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:10:08', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    5193139, 
    TO_TIMESTAMP(
      '2020/02/16 10:48:03', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:19:18', 'yyyy/mm/dd HH24:MI:SS'
    )
  );
INSERT INTO visits 
VALUES 
  (
    2908001, 
    TO_TIMESTAMP(
      '2020/02/16 10:38:15', 'yyyy/mm/dd HH24:MI:SS'
    ), 
    TO_TIMESTAMP(
      '2020/02/16 16:57:02', 'yyyy/mm/dd HH24:MI:SS'
    )
  );

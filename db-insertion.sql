insert into exchange_rates (rate_id, rate) 
values 
('EURCZK', 24.44),
('CZKEUR', 0.04),
('EURUSD', 1.08),
('USDEUR', 0.93),
('USDCZK', 22.64),
('CZKUSD', 0.04)
;

insert into exchange_rates (rate_id,rate)
values
('HKDCZK', 2.89),
('CZKHKD', 0.35),
('HKDUSD', 0.13),
('USDHKD', 7.84),
('HKDEUR', 0.12),
('EURHKD', 8.47)
;

insert into exchange_rates (rate_id, rate)
values
('GBPCZK', 29.42),
('CZKGBP', 0.034),
('GBPEUR', 1.21),
('EURGBP', 0.83),
('GBPUSD', 1.30),
('USDGBP', 0.77),
('GBPHKD', 10.21),
('HKDGBP', 0.10)
;
insert into markets (market_id, full_name, location)
values
(0, 'New York Stock Exchange', 'USA'),
((select max(market_id) + 1 from markets m), 'Nasdaq', 'USA'),
((select max(market_id) + 1 from markets m), 'Shanghai Stock Exchange', 'China'),
((select max(market_id) + 1 from markets m), 'Euronext', 'European Union'),
((select max(market_id) + 1 from markets m), 'Japan Exchange Group', 'Japan'),
((select max(market_id) + 1 from markets m), 'Hong Kong Stock Exchange', 'Hong Kong'),
((select max(market_id) + 1 from markets m), 'Shenzhen Stock Exchange', 'China'),
((select max(market_id) + 1 from markets m), 'Bombay Stock Exchange', 'India'),
((select max(market_id) + 1 from markets m), 'National Stock Exchange', 'India'),
((select max(market_id) + 1 from markets m), 'London Stock Exchange', 'United Kingdom'),
((select max(market_id) + 1 from markets m), 'Toronto Stock Exchange', 'Canada'),
((select max(market_id) + 1 from markets m), 'Deutsche Boerse AG', 'Germany'),
((select max(market_id) + 1 from markets m), 'Saudi Stock Exchange', 'Saudi Arabia'),
((select max(market_id) + 1 from markets m), 'Korea Exchange', 'South Korea'),
((select max(market_id) + 1 from markets m), 'SIX Swiss Exchange', 'Switzerland'),
((select max(market_id) + 1 from markets m), 'Taiwan Stock Exchange', 'Taiwan'),
((select max(market_id) + 1 from markets m), 'Australian Stock Exchange', 'Australia'),
((select max(market_id) + 1 from markets m), 'Tehran Stock Exchange', 'Iran'),
((select max(market_id) + 1 from markets m), 'B3 Brasil Bolsa Balcao', 'Brazil'),
((select max(market_id) + 1 from markets m), 'Johannesburg Stock Exchange', 'South Africa')
;

-- delete from markets 

insert into symbols (symbol_id, full_name, value, currency, market_id)
values
('AAPL', 'Apple Inc', 165.29, 'USD', 1),
('MSFT', 'Microsoft Corporation', 279.83,'USD', 1),
('GOOG', 'Alphabet Inc Class C', 2545.06, 'USD',1),
('GIS', 'General Mills', 70.92, 'USD',0),
('QSR', 'Restaurant Brands International', 60.43,'USD', 0),
('700','Tencent Holdings LTD.',374.4, 'HKD', 5),
('AFR', 'Air France-KLM INH. EO 1', 4109, 'EUR', 11),
('BBDB', 'Bombardier INC. CL. B.', 1.04, 'EUR', 11),
('5ZM', 'ZOOM Video Comm. A', 105.08, 'EUR',11),
('SRB', 'Starbucs Corp.', 73.92, 'EUR', 11),
('AMZN', 'Amazon.com Inc.', 3034.13, 'USD', 1),
('TSLA', 'Tesla Inc', 985.00, 'USD', 1),
('NVDA', 'NVIDIA Corporation', 212.58, 'USD', 1),
('AMD', 'Advanced Micro Devices, Inc.', 93.06, 'USD', 1),
('VOW', 'Volkswagen AG', 206.70, 'EUR', 11),
('ML', 'Michelin', 119.2, 'EUR', 3),
('INTC', 'Intel Corporation', 45.67, 'USD', 1),
('FB', 'Meta Platforms Inc', 210.18, 'USD', 1),
('AIR', 'Airbus SE', 106.12, 'EUR', 3),
('RR', 'Rolls-Royce Holding PLC', 93.48, 'GBP', 9),
('MDLZ', 'Mondelez International Inc Common Stock', 63.72, 'USD', 1)

insert into investors (investor_id, first_name, surname, cash_CZK, cash_EUR, cash_USD)
values
(0, 'Hubert', 'Máchal', 567343.54, 0, 0),
((select max(investor_id) + 1 from investors i), 'Vlastimil', 'Kopecký', 989123, 100000, 0),
((select max(investor_id) + 1 from investors i), 'Wilhelm', 'Mueller', 0, 103400, 234123),
((select max(investor_id) + 1 from investors i), 'Meghan', 'Haas', 0, 123876, 99552),
((select max(investor_id) + 1 from investors i), 'Aliya', 'Johnson', 0, 876456, 3452),
((select max(investor_id) + 1 from investors i), 'Betty', 'Berg', 12345, 89844, 666543),
((select max(investor_id) + 1 from investors i), 'Pavel', 'Petr', 1023443, 10000, 234564),
((select max(investor_id) + 1 from investors i), 'Kazimír', 'Mizera', 5543286, 34533, 12343),
((select max(investor_id) + 1 from investors i), 'Vladivoj', 'Kotátko', 776543, 0, 0),
((select max(investor_id) + 1 from investors i), 'Bedrich', 'Vytlacil', 543221, 32345, 1234),
((select max(investor_id) + 1 from investors i), 'Božena', 'Chytrá', 8782345, 0, 0),
((select max(investor_id) + 1 from investors i), 'Charlotte', 'Mullins', 0, 100000, 323451),
((select max(investor_id) + 1 from investors i), 'Ciara', 'Cameron', 0, 43264, 23653),
((select max(investor_id) + 1 from investors i), 'Friedrich', 'Bergmann', 0, 987896, 23424),
((select max(investor_id) + 1 from investors i), 'Michal', 'Šmoula', 432123, 0, 0),
((select max(investor_id) + 1 from investors i), 'Daniel', 'Durdil', 5467432, 0, 0),
((select max(investor_id) + 1 from investors i), 'Kvetuše', 'Sýkorová', 17634530, 12343, 23422),
((select max(investor_id) + 1 from investors i), 'Olga', 'Scheinpflugová', 1234, 5555, 0),
((select max(investor_id) + 1 from investors i), 'Jirí', 'Fišer', 12989123, 129990, 76522),
((select max(investor_id) + 1 from investors i), 'Vavrinec', 'Fisher', 4321110, 65000, 0),
((select max(investor_id) + 1 from investors i), 'Pankrác', 'Vydriduch', 12000, 999911, 0),
((select max(investor_id) + 1 from investors i), 'Doubravka', 'Nezmarná', 300100, 10000, 1990)
;

insert into investor_symbol (id, investor_id, symbol_id, share_amount)
values
(0, 16, 'MDLZ', 12),
((select max(id)+1 from investor_symbol insy), 18, 'GOOG', 19),
((select max(id)+1 from investor_symbol insy), 0, 'AMZN', 7),
((select max(id)+1 from investor_symbol insy), 1, 'MSFT', 9),
((select max(id)+1 from investor_symbol insy), 2, 'GOOG', 1),
((select max(id)+1 from investor_symbol insy), 3, 'INTC', 5),
((select max(id)+1 from investor_symbol insy), 20, 'TSLA', 31),
((select max(id)+1 from investor_symbol insy), 14, 'FB', 25),
((select max(id)+1 from investor_symbol insy), 17, 'AMD', 1),
((select max(id)+1 from investor_symbol insy), 18, 'NVDA', 20),
((select max(id)+1 from investor_symbol insy), 15, 'RR', 40),
((select max(id)+1 from investor_symbol insy), 12, 'SRB', 23),
((select max(id)+1 from investor_symbol insy), 18, '700', 19),
((select max(id)+1 from investor_symbol insy), 11, 'VOW', 6),
((select max(id)+1 from investor_symbol insy), 13, '5ZM', 19),
((select max(id)+1 from investor_symbol insy), 8, 'QSR', 41),
((select max(id)+1 from investor_symbol insy), 5, 'AFR', 42),
((select max(id)+1 from investor_symbol insy), 6, 'ML', 19),
((select max(id)+1 from investor_symbol insy), 17, 'GOOG', 19),
((select max(id)+1 from investor_symbol insy), 4, 'GIS', 30),
((select max(id)+1 from investor_symbol insy), 19, 'BBDB', 9)
;
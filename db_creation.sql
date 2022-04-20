-- create database Brokerage
use Brokerage



create table Exchange_rates(
rate_id VARCHAR(6) not null,
rate DECIMAL(10,2) not null,
primary key(rate_id)
)

create table Markets(
market_id INTEGER not null,
full_name VARCHAR(30) not null,
location VARCHAR(30) not null,
primary key(market_id)
)

create table Symbols (
symbol_id VARCHAR(7) not null,
full_name VARCHAR(30) not null,
dollar_value DECIMAL(10,2) not null,
market_id INTEGER not null,
primary KEY(symbol_id),
foreign key(market_id)
	references Markets(market_id)
)

create table Investors(
investor_id INTEGER not null,
first_name VARCHAR(30) not null,
surname VARCHAR(30) not null,
cash_CZK DECIMAL(10,2) not null,
cash_EUR DECIMAL(10,2) not null,
cash_USD DECIMAL(10,2) not null,
primary key(investor_id)
)

create table Investor_Symbol(
id INTEGER not null,
investor_id INTEGER not null,
symbol_id VARCHAR(4) not null,
share_amount INTEGER not null,
primary key(id),
foreign key (symbol_id)
	references Symbols(symbol_id),
foreign key (investor_id)
	references Investors(investor_id)
)

alter table symbols change dollar_value value DECIMAL(10,2) not null
alter table symbols add currency VARCHAR(3) not null
alter table symbols change full_name full_name VARCHAR(60) not null
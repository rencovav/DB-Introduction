-- Převod investorovy hotovosti v korunách na eura
select 
	i.cash_czk * er.rate as EXCHANGED
from
	Investors i,
	Exchange_rates er
where
	i.investor_id = '1'
	and er.rate_id = 'CZKEUR';


-- vybere vlastníky daného symbolu
select
	i.first_name,
	i.surname
from
	Investors i
inner join investor_symbol inv_sym 
on
	i.investor_id = inv_sym.investor_id
inner join symbols s
on
	s.symbol_id = inv_sym.symbol_id
where
	-- s.full_name in('Alphabet Inc Class C');
	s.full_name like('Alphabet%')
	
-- najde investora podle příjmení	
select
	surname,
	first_name
from
	Investors
where
	surname = 'Durdil'
	or surname = 'durdil';

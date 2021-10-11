  create table <item_name>_btc_monthly_table as 
  select 
  max(real_date) as month_end_date,
  avg(price) as avg_price_usd,
  avg("close") avg_close_usd,
  avg(("close"+"open"+"high"+"close")/4) as avg_true_close_usd,
  avg(price/"close") as avg_price_coin,
  avg(price/(("close"+"open"+"high"+"close")/4)) as avg_true_price_coin
  from(
	  select * from 
  		(Select to_date(
        to_char("day", '00') || to_char("month", '00') || to_char("year", '9999'),
        'DDMMYYYY'
      ) as "real_date", * from fridge ) handy  
	  left join btc on handy.real_date = "Date") bilge group by
	  bilge.month, bilge.year order by "month_end_date"
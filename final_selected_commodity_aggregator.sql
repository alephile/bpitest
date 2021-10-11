
Select 
bicycle_btc_monthly_table.month_end_date as "date",

bicycle_btc_monthly_table.avg_price_usd as "bicycle(usd)",
bicycle_btc_monthly_table.avg_true_price_coin as "bicycle(btc)",


handbag_btc_monthly_table.avg_price_usd as "handbag(usd)",
handbag_btc_monthly_table.avg_true_price_coin as "handbag(btc)",

refrigerator_btc_monthly_table.avg_price_usd as "refrigerator(usd)",
refrigerator_btc_monthly_table.avg_true_price_coin as "refrigerator(btc)",

tire_btc_monthly_table.avg_price_usd as "tire(usd)",
tire_btc_monthly_table.avg_true_price_coin as "tire(btc)",

wash_btc_monthly_table.avg_price_usd as "wash(usd)",
wash_btc_monthly_table.avg_true_price_coin as "wash(btc)"


from bicycle_btc_monthly_table 

left join handbag_btc_monthly_table 
on bicycle_btc_monthly_table.month_end_date = handbag_btc_monthly_table.month_end_date

left join refrigerator_btc_monthly_table 
on bicycle_btc_monthly_table.month_end_date = refrigerator_btc_monthly_table.month_end_date

left join tire_btc_monthly_table 
on bicycle_btc_monthly_table.month_end_date = tire_btc_monthly_table.month_end_date

left join wash_btc_monthly_table 
on bicycle_btc_monthly_table.month_end_date = wash_btc_monthly_table.month_end_date

Window w as PARTITION BY ()
order by bicycle_btc_monthly_table.month_end_date
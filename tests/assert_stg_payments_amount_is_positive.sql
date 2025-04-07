with payments as (
    select * from {{ref('stg_stripe__payments')}}
)

select
    orderid,
    sum(amount) as tot_amount
from
    payments
group by 
    orderid
having 
    tot_amount < 0

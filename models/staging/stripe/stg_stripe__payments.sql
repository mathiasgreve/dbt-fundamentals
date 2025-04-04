--select * from `dbt-tutorial.stripe.payment`

select * from {{ source('stripe', 'payment')}}
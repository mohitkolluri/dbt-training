with payments as (
    select 
    orderid as order_id,
    id as payment_id,
    paymentmethod as payment_method,
    status,
    amount/100 as amount,
    created as created_at

    from raw.stripe.payment
)

select * from payments


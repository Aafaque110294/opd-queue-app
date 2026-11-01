alter table public.tickets
  add column if not exists paid_amount numeric(10, 2)
  check (paid_amount is null or paid_amount >= 0);

alter table public.tickets
  add column if not exists payment_mode text
  check (payment_mode is null or payment_mode in ('CASH', 'UPI', 'CARD', 'OTHER', 'NONE'));